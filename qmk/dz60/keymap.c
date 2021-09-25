#include QMK_KEYBOARD_H

enum {
    TD_CAPS_LAYER,
    TD_FN_REC
};

typedef struct {
    enum {
        tap,
        double_tap,
        double_tap_hold,
        triple_tap,
        hold,
        none
    } state;
} tap_act_hist ;

static tap_act_hist caps_act_hist = {
    .state = none
};
static tap_act_hist fn_act_hist = {
    .state = none
};

void dance_layers(qk_tap_dance_state_t *state, void *user_data) {
    if (state->count == 1) {
        if (state->finished && state->pressed) {
            layer_on(1);
            caps_act_hist.state = hold;
        }
        else {
            register_code(KC_CAPS);
            caps_act_hist.state = tap;
        }
    }
    else if (state->count == 2) {
        if (state->finished && state->pressed) {
            layer_on(2);
            caps_act_hist.state = double_tap_hold;
        }
        else {
            layer_on(2);
            caps_act_hist.state = double_tap;
        }
    } 
}

void dance_reset(qk_tap_dance_state_t *state, void *user_data) {
    switch (caps_act_hist.state) {
        case tap: unregister_code(KC_CAPS); break;
        case hold: layer_off(1); break;
        case double_tap_hold: layer_off(2); break;
        default: break;
    }
    caps_act_hist.state = none;
}

void rec_layers(qk_tap_dance_state_t *state, void *user_data) {
    keyrecord_t kr;
    if (state->count == 1) {
        if (state->finished && state->pressed) {
            layer_on(1);
            fn_act_hist.state = hold;
        }
        else {
            kr.event.pressed = false;
            process_dynamic_macro( DYN_MACRO_PLAY1, &kr );
            fn_act_hist.state = tap;
        }
    }
    else if (state->count == 2) {
        kr.event.pressed = true;
        process_dynamic_macro( DYN_REC_STOP, &kr );
        fn_act_hist.state = double_tap;
    } 
    else if (state->count == 3) {
        kr.event.pressed = false;
        process_dynamic_macro( DYN_REC_START1, &kr );
        fn_act_hist.state = triple_tap;
    } 
}

void rec_reset(qk_tap_dance_state_t *state, void *user_data) {
    switch (fn_act_hist.state) {
        case hold: layer_off(1); break;
        default: break;
    }
    fn_act_hist.state = none;
}

qk_tap_dance_action_t tap_dance_actions[] = {
    [TD_CAPS_LAYER] = ACTION_TAP_DANCE_FN_ADVANCED(NULL, dance_layers, dance_reset),
    [TD_FN_REC] = ACTION_TAP_DANCE_FN_ADVANCED(NULL, rec_layers, rec_reset)
};

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
	[0] = LAYOUT_60_ansi(KC_GESC, KC_1, KC_2, KC_3, KC_4, KC_5, KC_6, KC_7, KC_8, KC_9, KC_0, KC_MINS, KC_EQL, KC_BSPC, KC_TAB, KC_Q, KC_W, KC_E, KC_R, KC_T, KC_Y, KC_U, KC_I, KC_O, KC_P, KC_LBRC, KC_RBRC, KC_BSLS, TD(TD_CAPS_LAYER), KC_A, KC_S, KC_D, KC_F, KC_G, KC_H, KC_J, KC_K, KC_L, KC_SCLN, KC_QUOT, KC_ENT, KC_LSFT, KC_Z, KC_X, KC_C, KC_V, KC_B, KC_N, KC_M, KC_COMM, KC_DOT, KC_SLSH, KC_RSFT, KC_LCTL, KC_LGUI, KC_LALT, KC_SPC, KC_RALT, KC_LGUI, TD(TD_FN_REC), KC_RCTL),
	[1] = LAYOUT_60_ansi(KC_GRV, KC_F1, KC_F2, KC_F3, KC_F4, KC_F5, KC_F6, KC_F7, KC_F8, KC_F9, KC_F10, KC_F11, KC_F12, KC_DEL, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_HOME, KC_PGUP, KC_TRNS, KC_PGDN, KC_PSCR, KC_SLCK, KC_TRNS, RESET, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_LEFT, KC_DOWN, KC_UP, KC_RGHT, KC_INS, KC_DEL, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_END, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS),
	[2] = LAYOUT_60_ansi(KC_TRNS, KC_F1, KC_F2, KC_F3, KC_F4, KC_F5, KC_F6, KC_F7, KC_F8, KC_F9, KC_F10, KC_F11, KC_F12, KC_DEL, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_HOME, KC_PGUP, KC_UP, KC_PGDN, KC_PSCR, KC_SLCK, KC_TRNS, KC_TRNS, TO(0), KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_END, KC_LEFT, KC_DOWN, KC_RGHT, KC_INS, KC_DEL, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS)
};

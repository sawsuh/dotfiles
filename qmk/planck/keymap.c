#include QMK_KEYBOARD_H

/* THIS FILE WAS GENERATED!
 *
 * This file was generated by qmk json2c. You may or may not want to
 * edit it directly.
 */

#ifdef RGBLIGHT_ENABLE
void keyboard_post_init_user(void) {
    rgblight_enable_noeeprom();
    rgblight_sethsv_noeeprom(HSV_PURPLE);
    rgblight_mode_noeeprom(RGBLIGHT_MODE_STATIC_LIGHT);
}
#endif

enum my_codes {
    RETURN_HOME = SAFE_RANGE
};

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case RETURN_HOME:
            if (!record->event.pressed) {
                layer_move(0);
//                rgblight_sethsv_noeeprom(HSV_PURPLE);
            }
            return false;
        default:
            return true;
    }
}

enum {
    TD_FN_LAYER
};

typedef struct {
    enum {
        tap,
        hold,
        double_tap,
        none
    } state;
} tap_act_hist ;

static tap_act_hist fn_act_hist = {
    .state = none
};

void td_layer(qk_tap_dance_state_t *state, void *user_data) {
    if (state->count == 1) {
        if (state->finished && state->pressed) {
            layer_on(1);
            fn_act_hist.state = hold;
        }
        else {
            layer_on(1);
            fn_act_hist.state = tap;
        }
  //      rgblight_sethsv_noeeprom(HSV_TEAL);
    }
    else if (state->count == 2) {
        layer_on(2);
 //       rgblight_sethsv_noeeprom(HSV_YELLOW);
        fn_act_hist.state = double_tap;
    }
}

void td_reset(qk_tap_dance_state_t *state, void *user_data) {
    switch (fn_act_hist.state) {
   //     case hold: layer_off(1); rgblight_sethsv_noeeprom(HSV_PURPLE); break;
        case hold: layer_off(1); break;
        default: break;
    }
    fn_act_hist.state = none;
}

qk_tap_dance_action_t tap_dance_actions[] = {
    [TD_FN_LAYER] = ACTION_TAP_DANCE_FN_ADVANCED(NULL, td_layer, td_reset)
};

/*const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
	[0] = LAYOUT_ortho_4x12(KC_TAB, KC_Q, KC_W, KC_E, KC_R, KC_T, KC_Y, KC_U, KC_I, KC_O, KC_P, KC_BSPC, KC_ESC, KC_A, KC_S, KC_D, KC_F, KC_G, KC_H, KC_J, KC_K, KC_L, KC_SCLN, KC_QUOT, KC_LSFT, KC_Z, KC_X, KC_C, KC_V, KC_B, KC_N, KC_M, KC_COMM, KC_DOT, KC_SLSH, MT(MOD_RSFT,KC_ENT), TD(TD_FN_LAYER), KC_LCTL, KC_LGUI, KC_LALT, MO(2), KC_SPC, KC_SPC, MO(3), KC_LEFT, KC_DOWN, KC_UP, KC_RGHT),
	[1] = LAYOUT_ortho_4x12(KC_TAB, KC_Q, KC_W, KC_E, KC_R, KC_T, KC_Y, KC_U, KC_I, KC_O, KC_P, KC_BSPC, KC_ESC, KC_A, KC_S, KC_D, KC_F, KC_G, KC_H, KC_J, KC_K, KC_L, KC_SCLN, KC_QUOT, KC_LSFT, KC_Z, KC_X, KC_C, KC_V, KC_B, KC_N, KC_M, KC_HOME, KC_PGUP, KC_UP, KC_PGDN, TO(0), KC_LCTL, KC_LGUI, KC_LALT, MO(2), KC_SPC, KC_SPC, MO(3), KC_END, KC_LEFT, KC_DOWN, KC_RGHT),
	[2] = LAYOUT_ortho_4x12(KC_TILD, KC_EXLM, KC_AT, KC_HASH, KC_DLR, KC_PERC, KC_CIRC, KC_AMPR, KC_ASTR, KC_LPRN, KC_RPRN, KC_BSPC, KC_DEL, KC_F1, KC_F2, KC_F3, KC_F4, KC_F5, KC_F6, KC_UNDS, KC_PLUS, KC_LCBR, KC_RCBR, KC_PIPE, KC_TRNS, KC_F7, KC_F8, KC_F9, KC_F10, KC_F11, KC_F12, LSFT(KC_NUHS), LSFT(KC_NUBS), KC_HOME, KC_END, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, MO(4), KC_MNXT, KC_VOLD, KC_VOLU, KC_MPLY),
	[3] = LAYOUT_ortho_4x12(KC_GRV, KC_1, KC_2, KC_3, KC_4, KC_5, KC_6, KC_7, KC_8, KC_9, KC_0, KC_BSPC, KC_DEL, KC_F1, KC_F2, KC_F3, KC_F4, KC_F5, KC_F6, KC_MINS, KC_EQL, KC_LBRC, KC_RBRC, KC_BSLS, KC_TRNS, KC_F7, KC_F8, KC_F9, KC_F10, KC_F11, KC_F12, KC_NUHS, KC_NUBS, KC_PGUP, KC_PGDN, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, MO(4), KC_TRNS, KC_TRNS, KC_TRNS, KC_MNXT, KC_VOLD, KC_VOLU, KC_MPLY),
	[4] = LAYOUT_ortho_4x12(KC_TRNS, RESET, DEBUG, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_DEL, KC_TRNS, KC_TRNS, MU_MOD, AU_ON, AU_OFF, KC_TRNS, KC_TRNS, KC_TRNS, DYN_MACRO_PLAY1, DYN_REC_STOP, DYN_REC_START1, KC_TRNS, KC_TRNS, MUV_DE, MUV_IN, MU_ON, MU_OFF, MI_ON, MI_OFF, TERM_ON, TERM_OFF, KC_TRNS, KC_TRNS, KC_TRNS, KC_CAPS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS)
}; */
/*const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
	[0] = LAYOUT_ortho_4x12(KC_TAB, KC_Q, KC_W, KC_E, KC_R, KC_T, KC_Y, KC_U, KC_I, KC_O, KC_P, KC_BSPC, KC_ESC, KC_A, KC_S, KC_D, KC_F, KC_G, KC_H, KC_J, KC_K, KC_L, KC_SCLN, KC_QUOT, KC_LSFT, KC_Z, KC_X, KC_C, KC_V, KC_B, KC_N, KC_M, KC_COMM, KC_DOT, KC_SLSH, MT(MOD_RSFT,KC_ENT), TD(TD_FN_LAYER), KC_LCTL, KC_LGUI, KC_LALT, MO(3), KC_SPC, KC_SPC, MO(4), KC_RALT, KC_RGUI, KC_RCTL, TD(TD_FN_LAYER)),
	[1] = LAYOUT_ortho_4x12(KC_TAB, KC_Q, KC_W, KC_E, KC_R, KC_T, KC_Y, KC_U, KC_I, KC_O, KC_P, KC_BSPC, KC_ESC, KC_A, KC_S, KC_D, KC_F, KC_G, KC_H, KC_J, KC_K, KC_L, KC_SCLN, KC_QUOT, KC_LSFT, KC_Z, KC_X, KC_C, KC_V, KC_B, KC_N, KC_M, KC_COMM, KC_DOT, KC_SLSH, KC_ENT, TT(1), KC_LCTL, KC_LGUI, KC_LALT, MO(3), KC_SPC, KC_SPC, MO(4), KC_LEFT, KC_DOWN, KC_UP, KC_RGHT),
	[2] = LAYOUT_ortho_4x12(KC_TAB, KC_Q, KC_W, KC_E, KC_R, KC_T, KC_Y, KC_U, KC_I, KC_O, KC_P, KC_BSPC, KC_ESC, KC_A, KC_S, KC_D, KC_F, KC_G, KC_H, KC_J, KC_K, KC_L, KC_SCLN, KC_QUOT, KC_LSFT, KC_Z, KC_X, KC_C, KC_V, KC_B, KC_N, KC_M, KC_HOME, KC_PGUP, KC_UP, KC_PGDN, TO(0), KC_LCTL, KC_LGUI, KC_LALT, MO(3), KC_SPC, KC_SPC, MO(4), KC_END, KC_LEFT, KC_DOWN, KC_RGHT),
	[3] = LAYOUT_ortho_4x12(KC_TILD, KC_EXLM, KC_AT, KC_HASH, KC_DLR, KC_PERC, KC_CIRC, KC_AMPR, KC_ASTR, KC_LPRN, KC_RPRN, KC_BSPC, KC_DEL, KC_F1, KC_F2, KC_F3, KC_F4, KC_F5, KC_F6, KC_UNDS, KC_PLUS, KC_LCBR, KC_RCBR, KC_PIPE, KC_TRNS, KC_F7, KC_F8, KC_F9, KC_F10, KC_F11, KC_F12, LSFT(KC_NUHS), LSFT(KC_NUBS), KC_HOME, KC_END, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, MO(5), KC_MNXT, KC_VOLD, KC_VOLU, KC_MPLY),
	[4] = LAYOUT_ortho_4x12(KC_GRV, KC_1, KC_2, KC_3, KC_4, KC_5, KC_6, KC_7, KC_8, KC_9, KC_0, KC_BSPC, KC_DEL, KC_F1, KC_F2, KC_F3, KC_F4, KC_F5, KC_F6, KC_MINS, KC_EQL, KC_LBRC, KC_RBRC, KC_BSLS, KC_TRNS, KC_F7, KC_F8, KC_F9, KC_F10, KC_F11, KC_F12, KC_NUHS, KC_NUBS, KC_PGUP, KC_PGDN, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, MO(5), KC_TRNS, KC_TRNS, KC_TRNS, KC_MNXT, KC_VOLD, KC_VOLU, KC_MPLY),
	[5] = LAYOUT_ortho_4x12(KC_TRNS, RESET, DEBUG, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_DEL, KC_TRNS, KC_TRNS, MU_MOD, AU_ON, AU_OFF, KC_TRNS, KC_TRNS, KC_TRNS, DYN_MACRO_PLAY1, DYN_REC_STOP, DYN_REC_START1, KC_TRNS, KC_TRNS, MUV_DE, MUV_IN, MU_ON, MU_OFF, MI_ON, MI_OFF, TERM_ON, TERM_OFF, KC_TRNS, KC_TRNS, KC_TRNS, KC_CAPS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS)
};*/
const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
	[0] = LAYOUT_ortho_4x12(KC_TAB, KC_Q, KC_W, KC_E, KC_R, KC_T, KC_Y, KC_U, KC_I, KC_O, KC_P, KC_BSPC, KC_ESC, KC_A, KC_S, KC_D, KC_F, KC_G, KC_H, KC_J, KC_K, KC_L, KC_SCLN, KC_QUOT, KC_LSFT, KC_Z, KC_X, KC_C, KC_V, KC_B, KC_N, KC_M, KC_COMM, KC_DOT, KC_SLSH, MT(MOD_RSFT,KC_ENT), TD(TD_FN_LAYER), KC_LCTL, KC_LGUI, KC_LALT, MO(4), KC_SPC, KC_SPC, MO(3), KC_LEFT, KC_DOWN, KC_UP, KC_RGHT),
	//[1] = LAYOUT_ortho_4x12(KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_LEFT, KC_DOWN, KC_UP, KC_RGHT),
    [1] = LAYOUT_ortho_4x12(KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, RETURN_HOME, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_RALT, KC_RGUI, KC_RCTL, KC_CAPS),
	[2] = LAYOUT_ortho_4x12(KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_HOME, KC_PGUP, KC_UP, KC_PGDN, RETURN_HOME, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_END, KC_LEFT, KC_DOWN, KC_RGHT),
	[3] = LAYOUT_ortho_4x12(KC_TILD, KC_EXLM, KC_AT, KC_HASH, KC_DLR, KC_PERC, KC_CIRC, KC_AMPR, KC_ASTR, KC_LPRN, KC_RPRN, KC_BSPC, KC_DEL, KC_F1, KC_F2, KC_F3, KC_F4, KC_F5, KC_F6, KC_UNDS, KC_PLUS, KC_LCBR, KC_RCBR, KC_PIPE, KC_TRNS, KC_F7, KC_F8, KC_F9, KC_F10, KC_F11, KC_F12, LSFT(KC_NUHS), LSFT(KC_NUBS), KC_HOME, KC_END, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, MO(5),  KC_BSPC, KC_CAPS, KC_TRNS, KC_MNXT, KC_VOLD, KC_VOLU, KC_MPLY),
	[4] = LAYOUT_ortho_4x12(KC_GRV, KC_1, KC_2, KC_3, KC_4, KC_5, KC_6, KC_7, KC_8, KC_9, KC_0, KC_BSPC, KC_DEL, KC_F1, KC_F2, KC_F3, KC_F4, KC_F5, KC_F6, KC_MINS, KC_EQL, KC_LBRC, KC_RBRC, KC_BSLS, KC_TRNS, KC_F7, KC_F8, KC_F9, KC_F10, KC_F11, KC_F12, KC_NUHS, KC_NUBS, KC_PGUP, KC_PGDN, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_ENT, KC_DEL, MO(5), KC_MNXT, KC_VOLD, KC_VOLU, KC_MPLY),
	[5] = LAYOUT_ortho_4x12(KC_TRNS, RESET, DEBUG, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_DEL, KC_TRNS, KC_TRNS, MU_MOD, AU_ON, AU_OFF, KC_TRNS, KC_TRNS, KC_TRNS, DYN_MACRO_PLAY1, DYN_REC_STOP, DYN_REC_START1, KC_TRNS, KC_TRNS, MUV_DE, MUV_IN, MU_ON, MU_OFF, MI_ON, MI_OFF, TERM_ON, TERM_OFF, KC_TRNS, KC_TRNS, KC_TRNS, KC_CAPS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS)
};

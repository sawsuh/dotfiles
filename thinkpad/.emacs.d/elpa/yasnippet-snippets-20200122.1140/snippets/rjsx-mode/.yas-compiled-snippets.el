;;; Compiled snippets and support files for `rjsx-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'rjsx-mode
		     '(("graphql" "import { compose, graphql } from 'react-apollo'" "graphQLForComponent" nil
			("GraphQL")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/GraphQL/graphql" nil "1a3750bd-8108-40f5-92b4-f0730272815c")
		       ("expgql" "export default compose(\n  graphql(${1:queryOrMutation}, { name: ${2:name} }),\n)(${1:${TM_FILENAME_BASE}})" "exportGraphQL" nil
			("GraphQL")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/GraphQL/expgql" nil "ac6e22b0-886b-4a09-861b-c759bfb8fcbe")))


;;; Snippet definitions:
;;;
(yas-define-snippets 'rjsx-mode
		     '(("tit" "it('should $1', () => {\n  $0\n})" "itBlock" nil
			("Jest")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/Jest/tit" nil "96dcd16f-ee34-4832-8637-6610819df6ba")
		       ("test" "test('should $1', () => {\n  $0\n})" "testBlock" nil
			("Jest")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/Jest/test" nil "190f78b4-17ec-429e-aaf1-3231726ca580")
		       ("stest" "import React from 'react'\nimport renderer from 'react-test-renderer'\n\nimport { ${1:${TM_FILENAME_BASE}} } from '../${1:${TM_FILENAME_BASE}}'\n\ndescribe('<${1:${TM_FILENAME_BASE}} />', () => {\n  const defaultProps = {}\n  const wrapper = renderer.create(<${1:${TM_FILENAME_BASE}} {...defaultProps} />)\n\n  test('render', () => {\n    expect(wrapper).toMatchSnapshot()\n  })\n})" "setupTest" nil
			("Jest")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/Jest/stest" nil "ddc5cfd4-640f-4fb3-9f85-667de1e4a345")
		       ("srtest" "import React from 'react'\nimport renderer from 'react-test-renderer'\nimport { Provider } from 'react-redux'\n\nimport store from 'src/store'\nimport { ${1:${TM_FILENAME_BASE}} } from '../${1:${TM_FILENAME_BASE}}'\n\ndescribe('<${1:${TM_FILENAME_BASE}} />', () => {\n  const defaultProps = {}\n  const wrapper = renderer.create(\n    <Provider store={store}>\n     <${1:${TM_FILENAME_BASE}} {...defaultProps} />\n    </Provider>,\n  )\n\n  test('render', () => {\n    expect(wrapper).toMatchSnapshot()\n  })\n})" "setupReactComponentTestWithRedux" nil
			("Jest")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/Jest/srtest" nil "168f89c0-3e0b-4868-b090-50f6fc79d074")
		       ("sntest" "import 'react-native'\nimport React from 'react'\nimport renderer from 'react-test-renderer'\n\nimport ${1:${TM_FILENAME_BASE}} from '../${1:${TM_FILENAME_BASE}}'\n\ndescribe('<${1:${TM_FILENAME_BASE}} />', () => {\n  const defaultProps = {}\n  const wrapper = renderer.create(<${1:${TM_FILENAME_BASE}} {...defaultProps} />)\n\n  test('render', () => {\n    expect(wrapper).toMatchSnapshot()\n  })\n})" "setupReactNativeTest" nil
			("Jest")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/Jest/sntest" nil "fae867ad-ec86-4eff-bb90-a9bb07040eb7")
		       ("snrtest" "import 'react-native'\nimport React from 'react'\nimport renderer from 'react-test-renderer'\nimport { Provider } from 'react-redux'\n\nimport store from 'src/store'\nimport ${1:${TM_FILENAME_BASE}} from '../${1:${TM_FILENAME_BASE}}'\n\ndescribe('<${1:${TM_FILENAME_BASE}} />', () => {\n  const defaultProps = {}\n  const wrapper = renderer.create(\n    <Provider store={store}>\n      <${1:${TM_FILENAME_BASE}} {...defaultProps} />\n    </Provider>,\n  )\n\n  test('render', () => {\n    expect(wrapper).toMatchSnapshot()\n  })\n})" "setupReactNativeTestWithRedux" nil
			("Jest")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/Jest/snrtest" nil "de59c777-b0cb-40b1-903a-a006987fef2e")
		       ("desc" "describe('$1', () => {\n  $0\n})" "describeBlock" nil
			("Jest")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/Jest/desc" nil "edfbca80-e069-46cd-a034-b1523e57c4a4")))


;;; Snippet definitions:
;;;
(yas-define-snippets 'rjsx-mode
		     '(("state" "this.state.$0" "componentState" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/state" nil "2830720f-93e5-4c01-9624-c4ba068eecce")
		       ("sst" "this.setState({$0})" "componentSetStateObject" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/sst" nil "28f6e070-6384-471f-95bf-24fbb77d4d51")
		       ("ssf" "this.setState((state, props) => { return { $0 }})" "componentSetStateFunc" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ssf" nil "0f0e900a-8cf8-4fc6-a03d-75e73bb21f48")
		       ("scu" "shouldComponentUpdate = (nextProps, nextState) => {\n  $0\n}" "shouldComponentUpdate" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/scu" nil "0f6de3c7-5374-445d-a82e-d01364b53f04")
		       ("rpcp" "import React, { PureComponent } from 'react'\nimport PropTypes from 'prop-types'\n\nexport default class ${1:${TM_FILENAME_BASE}} extends PureComponent {\n  static propTypes = {\n\n  }\n\n  render() {\n    return (\n      <div>\n        $0\n      </div>\n    )\n  }\n}" "reactClassPureComponentWithPropTypes" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/rpcp" nil "54fc179d-98f0-44b8-bd39-a66ac67aaf38")
		       ("rpce" "import React, { PureComponent } from 'react'\n\nexport class ${1:${TM_FILENAME_BASE}} extends PureComponent {\n  render() {\n    return (\n      <div>\n        $0\n      </div>\n    )\n  }\n}\n\nexport default ${1:$TM_FILENAME_BASE}" "reactClassExportPureComponent" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/rpce" nil "295423f2-7029-42d3-ba82-8c5edfda37ce")
		       ("rpc" "import React, { PureComponent } from 'react'\n\nexport default class ${1:${TM_FILENAME_BASE}} extends PureComponent {\n  render() {\n    return (\n      <div>\n        $0\n      </div>\n    )\n  }\n}" "reactClassPureComponent" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/rpc" nil "58802667-d355-45e8-a000-c2e5d9677b97")
		       ("rmcp" "import React, { memo } from 'react'\nimport PropTypes from 'prop-types'\n\nconst ${1:${TM_FILENAME_BASE}} = memo(function ${1:${TM_FILENAME_BASE}}(props) {\n  return (\n    <div>\n      $0\n    </div>\n  )\n})\n\n${1:${TM_FILENAME_BASE}}.propTypes = {\n\n}\n\nexport default ${1:${TM_FILENAME_BASE}}" "reactFunctionMemoComponentWithPropTypes" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/rmcp" nil "ba569173-16e1-4d9d-9205-96dc0832455f")
		       ("rmc" "import React, { memo } from 'react'\n\nexport default memo(function ${1:${TM_FILENAME_BASE}}() {\n  return (\n    <div>\n      $0\n    </div>\n  )\n})" "reactFunctionMemoComponent" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/rmc" nil "6847343b-1efa-4db0-9b9a-2c9aaa4217c7")
		       ("rfcp" "import React from 'react'\nimport PropTypes from 'prop-types'\n\nfunction ${1:${TM_FILENAME_BASE}}(props) {\n  return (\n    <div>\n      $0\n    </div>\n  )\n}\n\n${1:${TM_FILENAME_BASE}}.propTypes = {\n\n}\n\nexport default ${1:${TM_FILENAME_BASE}}" "reactFunctionalComponentWithPropTypes" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/rfcp" nil "f24b6de3-135e-4da0-81d9-0f479f3b11dd")
		       ("rfce" "import React from 'react'\n\nfunction ${1:${TM_FILENAME_BASE}}() {\n  return (\n    <div>\n      $0\n    </div>\n  )\n}\n\nexport default ${1:${TM_FILENAME_BASE}}" "reactFunctionalExportComponent" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/rfce" nil "48f9521a-2b4e-4f71-850e-ecd47261a7a6")
		       ("rfc" "import React from 'react'\n\nexport default function ${1:${TM_FILENAME_BASE}}() {\n  return (\n    <div>\n      $0\n    </div>\n  )\n}" "reactFunctionalComponent" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/rfc" nil "65bc7baa-3368-4398-a208-fb1d92694183")
		       ("ren" "render() {\n  return (\n    <div>\n      $0\n    </div>\n  )\n}" "componentRender" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ren" nil "bfc91d09-863d-4e5d-96bf-afbd234f7ca8")
		       ("rcontext" "const ${1:contextName} = React.createContext()" "createContext" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/rcontext" nil "f33474db-1dd4-402b-852a-2c486d464213")
		       ("rconst" "constructor(props) {\n  super(props)\n\n  this.state = {\n     $0\n  }\n}" "classConstructor" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/rconst" nil "01abffb6-2b92-423d-850b-51ee5fdf4117")
		       ("rcep" "import React, { Component } from 'react'\nimport PropTypes from 'prop-types'\n\nexport class ${1:${TM_FILENAME_BASE}} extends Component {\n  static propTypes = {\n\n  }\n\n  render() {\n    return (\n      <div>\n        $0\n      </div>\n    )\n  }\n}\n\nexport default ${1:${TM_FILENAME_BASE}}" "reactClassExportComponentWithPropTypes" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/rcep" nil "5792fd46-6659-42c4-9c71-d7ca7d72a2a0")
		       ("rce" "import React, { Component } from 'react'\n\nexport class ${1:${TM_FILENAME_BASE}} extends Component {\n  render() {\n    return (\n      <div>\n        $0\n      </div>\n    )\n  }\n}\n\nexport default ${1:${TM_FILENAME_BASE}}" "reactClassExportComponent" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/rce" nil "43afee80-d7ef-41f5-8aa5-2571c4332da0")
		       ("rccp" "import React, { Component } from 'react'\nimport PropTypes from 'prop-types'\n\nexport default class ${1:${TM_FILENAME_BASE}} extends Component {\n  static propTypes = {\n    ${2:prop}: ${3:PropTypes}\n  }\n\n  render() {\n    return (\n      <div>\n        $0\n      </div>\n    )\n  }\n}" "reactClassCompomentPropTypes" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/rccp" nil "f8a0e704-88a4-4c72-8b9e-44fcf0290ae7")
		       ("rcc" "import React, { Component } from 'react'\n\nexport default class ${1:${TM_FILENAME_BASE}} extends Component {\n  render() {\n    return (\n      <div>\n        $0\n      </div>\n    )\n  }\n}" "reactClassCompoment" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/rcc" nil "5fa22440-fa5b-4f3e-98d5-9abe8c68fd5b")
		       ("rafcp" "import React from 'react'\nimport PropTypes from 'prop-types'\n\nconst ${1:${TM_FILENAME_BASE}} = props => {\n  return (\n    <div>\n      $0\n    </div>\n  )\n}\n\n${1:${TM_FILENAME_BASE}}.propTypes = {\n\n}\n\nexport default ${1:${TM_FILENAME_BASE}}" "reactArrowFunctionComponentWithPropTypes" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/rafcp" nil "a85f3fea-065d-499b-a297-b6e3f516c2d7")
		       ("rafce" "import React from 'react'\n\nconst ${1:${TM_FILENAME_BASE}} = () => {\n  return (\n    <div>\n      $0\n    </div>\n  )\n}\n\nexport default ${1:${TM_FILENAME_BASE}}" "reactArrowFunctionExportComponent" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/rafce" nil "65be124a-71d0-4fd9-975a-08d6ec6f9c58")
		       ("rafc" "import React from 'react'\n\nconst ${1:${TM_FILENAME_BASE}} = () => {\n  return (\n    <div>\n      $0\n    </div>\n  )\n}\n\nexport default ${1:${TM_FILENAME_BASE}}" "reactArrowFunctionComponent" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/rafc" nil "7c78fcf4-0cc0-4590-9abe-a9fc7b2a24e2")
		       ("ptypes" "static propTypes = {\n$0\n}" "staticPropTpyes" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptypes" nil "287a1b5e-57e6-4e00-b2af-24dd61bf6d8c")
		       ("ptsr" "PropTypes.string.isRequired," "propTypeStringRequired" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptsr" nil "b81ebfbd-fea2-4357-94c2-ad8fdd0efb4d")
		       ("ptshr" "PropTypes.shape({\n  $0\n}).isRequired," "propTypeShapeRequired" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptshr" nil "51708c90-2ba2-4ed4-bda9-e99e71ec3eeb")
		       ("ptsh" "PropTypes.shape({\n  $0\n})," "propTypeShape" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptsh" nil "d370d2c0-4093-4186-9102-070b1077ef1e")
		       ("pts" "PropTypes.string," "propTypeString" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/pts" nil "00414dbf-83ff-4777-949f-79e94d32f661")
		       ("ptor" "PropTypes.object.isRequired," "propTypeObjectRequired" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptor" nil "b0e07d72-3b54-4c30-a379-015b9537cf33")
		       ("ptoor" "PropTypes.objectOf($0).isRequired," "propTypeObjectOfRequired" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptoor" nil "6179536d-f392-4fe6-9c01-e1d59e7c0cc4")
		       ("ptoo" "PropTypes.objectOf($0)," "propTypeObjectOf" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptoo" nil "9681a478-42a2-4253-b652-ce92f5be6432")
		       ("pto" "PropTypes.object," "propTypeObject" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/pto" nil "ee3e2d3d-7d9d-42e8-a05f-ca30b04a7507")
		       ("ptnr" "PropTypes.number.isRequired," "propTypeNumberRequired" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptnr" nil "8fdab8f9-bce1-4f0f-8b9a-3d2f3d674b39")
		       ("ptndr" "PropTypes.node.isRequired," "propTypeNodeRequired" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptndr" nil "2d93109e-3916-42b5-afda-692d0ea2e784")
		       ("ptnd" "PropTypes.node," "propTypeNode" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptnd" nil "9902d633-c968-4215-835a-3e229678ea02")
		       ("ptn" "PropTypes.number," "propTypeNumber" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptn" nil "6c2482e1-a8c3-4b2a-a3b2-3e4eedabd3e4")
		       ("ptir" "PropTypes.instanceOf($0).isRequired," "propTypeInstanceOfRequired" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptir" nil "7fcf75fb-2d69-4d9d-af72-9667d13831d8")
		       ("pti" "PropTypes.instanceOf($0)," "propTypeInstanceOf" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/pti" nil "2b76dd2b-5065-47b9-a8f9-9c25c49327c5")
		       ("ptfr" "PropTypes.func.isRequired," "propTypeFuncRequired" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptfr" nil "5f377808-588a-48a1-8da3-fcabfcea78e6")
		       ("ptf" "PropTypes.func," "propTypeFunc" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptf" nil "c1ba108b-8b55-4c1f-bc6b-04f3d0aa489f")
		       ("ptetr" "PropTypes.oneOfType([\n  $0\n]).isRequired," "propTypeOneOfTypeRequired" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptetr" nil "2e95e787-9b25-4618-a16f-7d290a80ef17")
		       ("ptet" "PropTypes.oneOfType([\n  $0\n])," "propTypeOneOfType" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptet" nil "fffe178e-0de7-4cd0-b3a0-b9d6679738d7")
		       ("pter" "PropTypes.oneOf(['$0']).isRequired," "propTypeEnumRequired" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/pter" nil "d2971e16-ac74-4270-864e-9d771a0ba3d8")
		       ("ptelr" "PropTypes.element.isRequired," "propTypeElementRequired" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptelr" nil "bf1ecbad-63d0-4f2d-a28f-f1f76d4da162")
		       ("ptel" "PropTypes.element," "propTypeElement" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptel" nil "106b9955-0b26-4442-aebe-e69629a43856")
		       ("pte" "PropTypes.oneOf(['$0'])," "propTypeEnum" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/pte" nil "56738701-7759-43b2-b3a5-f61077f00679")
		       ("ptbr" "PropTypes.bool.isRequired," "propTypeBoolRequired" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptbr" nil "dbde6c9f-ee5e-4011-9408-a8893b9f3286")
		       ("ptb" "PropTypes.bool," "propTypeBool" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptb" nil "92723ee5-aa37-4b1a-be15-c9a730961575")
		       ("ptar" "PropTypes.array.isRequired," "propTypeArrayRequired" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptar" nil "a67e2217-054e-441c-90cb-514317ce7147")
		       ("ptaor" "PropTypes.arrayOf($0).isRequired," "propTypeArrayOfRequired" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptaor" nil "f2e72fa4-efc0-4cb3-a03b-0a5f190a2f06")
		       ("ptao" "PropTypes.arrayOf($0)," "propTypeArrayOf" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptao" nil "a6c1a991-4c85-411c-b883-e1b74a6cc609")
		       ("ptany" "PropTypes.any," "propTypeAny" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/ptany" nil "08932a85-31e3-4763-a210-7147d1c960e1")
		       ("pta" "PropTypes.array," "propTypeArray" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/pta" nil "128e90f1-5994-4011-92e6-9263fc186c71")
		       ("props" "this.props.$0" "componentProps" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/props" nil "ffd28ce2-1575-4e26-9e12-65c23d3f9ca2")
		       ("imrr" "import { BrowserRouter as Router, Route, Link } from 'react-router-dom'" "import React Router" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/imrr" nil "7dfa38c5-1e83-4c4f-b9bb-eaa17fbaba58")
		       ("imrpcp" "import React, { PureComponent } from 'react'\nimport PropTypes from 'prop-types'" "import React, { PureComponent } & PropTypes" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/imrpcp" nil "b3d7bbf4-ad54-43c2-84d6-12448dc9f00b")
		       ("imrpc" "import React, { PureComponent } from 'react'" "import React, { PureComponent }" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/imrpc" nil "b3a74dbd-aecf-4a5d-b2ae-5181ece57838")
		       ("imrmp" "import React, { memo } from 'react'\nimport PropTypes from 'prop-types'" "import React, { memo } & PropTypes" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/imrmp" nil "c226a4f1-847a-4fe5-acb4-01489ff3883f")
		       ("imrm" "import React, { memo } from 'react'" "import React, { memo }" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/imrm" nil "5c0b476d-98e2-4696-abe2-fadd659dc136")
		       ("imrd" "import ReactDOM from 'react-dom'" "import ReactDOM" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/imrd" nil "733c4c97-18be-443d-a929-5a562dacf02b")
		       ("imrcp" "import React, { Component } from 'react'\nimport PropTypes from 'prop-types'" "import React, { Component } & PropTypes" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/imrcp" nil "93c2e805-e6f9-4fc1-b664-3fd35d288574")
		       ("imrc" "import React, { Component } from 'react'" "import React, { Component }" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/imrc" nil "2e166e7c-41e6-4fb3-a6f5-2c1d9b1dacc2")
		       ("imr" "import React from 'react'" "import React" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/imr" nil "eab40eaf-3ddc-4994-9618-d575a82393fb")
		       ("impt" "import PropTypes from 'prop-types'" "import PropTypes" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/impt" nil "33c4817a-b813-4326-8c37-383a6b731f0a")
		       ("hoc" "import React from 'react'\nimport PropTypes from 'prop-types'\n\nexport default (WrappedComponent) => {\n  const hocComponent = ({ ...props }) => <WrappedComponent {...props} />\n\n  hocComponent.propTypes = {\n  }\n\n  return hocComponent\n}" "hocComponent" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/hoc" nil "0fccd0f9-2e0c-46e3-88e4-699b6adb680e")
		       ("gsbu" "getSnapshotBeforeUpdate = (prevProps, prevState) => {\n  $0\n}" "getSnapshotBeforeUpdate" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/gsbu" nil "6a682f76-d7e3-4983-bf11-735fa7143113")
		       ("gdsfp" "static getDerivedStateFromProps(props, state) {\n  ${1}\n}" "getDerivedStateFromProps" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/gdsfp" nil "3eeec841-9d3b-4e5c-93af-f478ffacc3f1")
		       ("fref" "const ref = React.createRef()" "forwardRef" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/fref" nil "77cf7d01-d7db-40c5-856f-4fbd79a3f1d7")
		       ("est" "state = {\n  $1\n}" "emptyState" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/est" nil "d1b4eeda-bb83-4aa0-ba21-d0d89671947f")
		       ("cwup" "componentWillUpdate = (nextProps, nextState) => {\n  $0\n}" "componentWillUpdate" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/cwup" nil "cd9a8917-1ad1-4de8-a382-cdf0c2e72943")
		       ("cwun" "componentWillUnmount = () => {\n  $0\n}" "componentWillUnmount" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/cwun" nil "f9e81a1f-356b-482d-9795-fc58fe00432d")
		       ("cwr" "componentWillReceiveProps = (nextProps) => {\n  $0\n}" "componentWillReceiveProps" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/cwr" nil "59e0e0d0-6efb-475f-a482-3d76f2f561a0")
		       ("cwm" "componentWillMount = () => {\n  $0\n}" "componentWillMount" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/cwm" nil "dba0d644-e837-40ad-8082-bbe583fa444f")
		       ("cs" "const { $1 } = this.state" "destructState" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/cs" nil "091603e8-70cf-42fa-89c0-4fb046aea976")
		       ("cref" "this.${1:refName}Ref = React.createRef()" "createRef" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/cref" nil "137d875c-953c-4180-bda6-0522b99af83a")
		       ("cp" "const { $1 } = this.props" "destructProps" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/cp" nil "dcd12a23-82f9-4779-8847-1ff9a7fdaecc")
		       ("cdup" "componentDidUpdate = (prevProps, prevState) => {\n  $0\n}" "componentDidUpdate" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/cdup" nil "a283c221-42f9-46f9-abaf-f41ef7f5812c")
		       ("cdm" "componentDidMount = () => {\n  $0\n}" "componentDidMount" nil
			("React")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React/cdm" nil "fed15504-4984-4bd8-a6d6-b1f34bccc721")))


;;; Snippet definitions:
;;;
(yas-define-snippets 'rjsx-mode
		     '(("rnstyle" "const styles = StyleSheet.create({\n  ${1:style}\n})" "reactNativeStyles" nil
			("React-Native")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React-Native/rnstyle" nil "0b1a0e2b-5577-4a15-bbbb-d573376c8587")
		       ("rnpce" "import React, { PureComponent } from 'react'\nimport { Text, View } from 'react-native'\n\nexport class ${1:${TM_FILENAME_BASE}} extends PureComponent {\n  render() {\n    return (\n      <View>\n        <Text> ${2:textInComponent} </Text>\n      </View>\n    )\n  }\n}\n\nexport default ${1:${TM_FILENAME_BASE}}" "reactNativePureComponentExport" nil
			("React-Native")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React-Native/rnpce" nil "b36666f2-3ac6-4ee7-9f17-b32d82705306")
		       ("rnpc" "import React, { PureComponent } from 'react'\nimport { Text, View } from 'react-native'\n\nexport default class ${1:${TM_FILENAME_BASE}} extends PureComponent {\n  render() {\n    return (\n      <View>\n        <Text> ${2:textInComponent} </Text>\n      </View>\n    )\n  }\n}" "reactNativePureComponent" nil
			("React-Native")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React-Native/rnpc" nil "d30232be-9660-4736-9fdc-4e50559db3d1")
		       ("rncs" "import React, { Component } from 'react'\nimport { Text, StyleSheet, View } from 'react-native'\n\nexport default class ${1:${TM_FILENAME_BASE}} extends Component {\n  render() {\n    return (\n      <View>\n        <Text> ${2:textInComponent} </Text>\n      </View>\n    )\n  }\n}\n\nconst styles = StyleSheet.create({})" "reactNativeComponentWithStyles" nil
			("React-Native")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React-Native/rncs" nil "6a9c7016-01b0-4c5c-84d6-28a688d81a4b")
		       ("rnce" "import React, { Component } from 'react'\nimport { Text, View } from 'react-native'\n\nexport class ${1:${TM_FILENAME_BASE}} extends Component {\n  render() {\n    return (\n      <View>\n        <Text> ${2:textInComponent} </Text>\n      </View>\n    )\n  }\n}\n\nexport default ${1:${TM_FILENAME_BASE}}" "reactNativeComponentExport" nil
			("React-Native")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React-Native/rnce" nil "27262af6-b8a7-4165-bbfb-815f62eb3d4f")
		       ("rnc" "import React, { Component } from 'react'\nimport { Text, View } from 'react-native'\n\nexport default class ${1:${TM_FILENAME_BASE}} extends Component {\n  render() {\n    return (\n      <View>\n        <Text> ${2:textInComponent} </Text>\n      </View>\n    )\n  }\n}" "reactNativeComponent" nil
			("React-Native")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React-Native/rnc" nil "c4aa3b3e-82af-434b-acc5-b08bf018e0aa")
		       ("imrn" "import { ${1:moduleName} } from 'react-native'" "reactNativeImport" nil
			("React-Native")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/React-Native/imrn" nil "1eff0de2-eeb3-457f-b935-7a733a03d378")))


;;; Snippet definitions:
;;;
(yas-define-snippets 'rjsx-mode
		     '(("rxselect" "import { createSelector } from 'reselect'\n\nexport const ${1:selectorName} = state => state.${2:selector}" "reduxSelector" nil
			("Redux")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/Redux/rxselect" nil "a654de53-26a1-4694-9da7-cc4b906d50fa")
		       ("rxreducer" "const initialState = {\n\n}\n\nexport default (state = initialState, { type, payload }) => {\n  switch (type) {\n\n  case ${1:typeName}:\n    return { ...state, ...payload }\n\n  default:\n    return state\n  }\n}" "reduxReducer" nil
			("Redux")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/Redux/rxreducer" nil "a7bb3ea0-bf96-401b-851e-a63b254f42ba")
		       ("rxconst" "export const ${1:constantName} = '${1:constantName}'" "reduxConst" nil
			("Redux")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/Redux/rxconst" nil "a274faf6-2964-4a22-adf7-1715d3b4a153")
		       ("rxaction" "export const ${1:actionName} = (payload) => ({\n  type: ${3:type},\n  payload\n})" "reduxAction" nil
			("Redux")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/Redux/rxaction" nil "9a5dfef3-2b52-4c8e-bad1-3493599e10d9")
		       ("rncredux" "import React, { Component } from 'react'\nimport { View, Text } from 'react-native'\nimport PropTypes from 'prop-types'\nimport { connect } from 'react-redux'\n\nexport class ${1:${TM_FILENAME_BASE}} extends Component {\n  static propTypes = {\n    ${2:prop}: ${3:PropTypes}\n  }\n\n  render() {\n    return (\n      <View>\n        <Text> ${2:textInComponent} </Text>\n      </View>\n    )\n  }\n}\n\nconst mapStateToProps = (state) => ({\n  \n})\n\nconst mapDispatchToProps = {\n  \n}\n\nexport default connect(mapStateToProps, mapDispatchToProps)(${1:${TM_FILENAME_BASE}})" "reactNativeClassComponentRedux" nil
			("Redux")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/Redux/rncredux" nil "73a39297-05ec-45c0-9a05-9b3e5653c477")
		       ("reduxmap" "const mapStateToProps = (state) => ({\n  ${1}\n})\n\nconst mapDispatchToProps = {\n  \n}" "mappingToProps" nil
			("Redux")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/Redux/reduxmap" nil "32f4d017-7d51-4d41-a954-91e2eaf493c5")
		       ("redux" "import { connect } from 'react-redux'" "import redux statement" nil
			("Redux")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/Redux/redux" nil "ebcbdf19-4ba9-404f-ab66-eb9b992d7126")
		       ("rcredux" "import React, { Component } from 'react'\nimport PropTypes from 'prop-types'\nimport { connect } from 'react-redux'\n\nexport class ${1:${TM_FILENAME_BASE}} extends Component {\n  static propTypes = {\n    ${2:prop}: ${3:PropTypes}\n  }\n\n  render() {\n    return (\n      <div>\n        $0\n      </div>\n    )\n  }\n}\n\nconst mapStateToProps = (state) => ({\n  \n})\n\nconst mapDispatchToProps = {\n  \n}\n\nexport default connect(mapStateToProps, mapDispatchToProps)(${1:${TM_FILENAME_BASE}})" "reactClassCompomentRedux" nil
			("Redux")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/Redux/rcredux" nil "c948b832-8ff1-41b2-a256-ce629dcd4dbe")
		       ("hocredux" "import React from 'react'\nimport PropTypes from 'prop-types'\nimport { connect } from 'react-redux'\n\nexport const mapStateToProps = state => ({\n\n})\n\nexport const mapDispatchToProps = {\n \n}\n\nexport const ${1:hocComponentName} = (WrappedComponent) => {\n  const hocComponent = ({ ...props }) => <WrappedComponent {...props} />\n\n  hocComponent.propTypes = {\n  }\n\n  return hocComponent\n}\n\nexport default WrapperComponent => connect(mapStateToProps, mapDispatchToProps)(${1:hocComponentName}(WrapperComponent))" "hocComponentWithRedux" nil
			("Redux")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/rjsx-mode/Redux/hocredux" nil "68de6229-17f5-4bd6-83ef-feaa3a1ccb31")))


;;; Do not edit! File generated at Fri Feb  7 17:33:05 2020

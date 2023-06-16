libsl "1.0.0";
library `snakeyaml-2.0`;

import "java.lsl";

type `org.yaml.snakeyaml.constructor.AbstractConstruct` {
}

type org.yaml.snakeyaml.events.AliasEvent {
}

type org.yaml.snakeyaml.tokens.AliasToken {
    value: java.lang.String;
}

type org.yaml.snakeyaml.serializer.AnchorGenerator {
}

type org.yaml.snakeyaml.nodes.AnchorNode {
    realNode: org.yaml.snakeyaml.nodes.Node;
}

type org.yaml.snakeyaml.tokens.AnchorToken {
    value: java.lang.String;
}

type org.yaml.snakeyaml.util.ArrayStack {
    stack: java.util.ArrayList;
}

type org.yaml.snakeyaml.util.ArrayUtils {
}

type org.yaml.snakeyaml.util.ArrayUtils$CompositeUnmodifiableArrayList {
    array1: array<java.lang.Object>;
    array2: array<java.lang.Object>;
}

type org.yaml.snakeyaml.util.ArrayUtils$UnmodifiableArrayList {
    array: array<java.lang.Object>;
}

type org.yaml.snakeyaml.external.biz.base64Coder.Base64Coder {
    systemLineSeparator: java.lang.String;
    map1: array<char>;
    map2: array<byte>;
}

type `org.yaml.snakeyaml.constructor.BaseConstructor` {
    NOT_INSTANTIATED_OBJECT: java.lang.Object;
    yamlClassConstructors: java.util.Map;
    yamlConstructors: java.util.Map;
    yamlMultiConstructors: java.util.Map;
    composer: org.yaml.snakeyaml.composer.Composer;
    constructedObjects: java.util.Map;
    recursiveObjects: java.util.Set;
    maps2fill: java.util.ArrayList;
    sets2fill: java.util.ArrayList;
    rootTag: org.yaml.snakeyaml.nodes.Tag;
    propertyUtils: org.yaml.snakeyaml.introspector.PropertyUtils;
    explicitPropertyUtils: bool;
    allowDuplicateKeys: bool;
    wrappedToRootException: bool;
    enumCaseSensitive: bool;
    typeDefinitions: java.util.Map;
    typeTags: java.util.Map;
    loadingConfig: org.yaml.snakeyaml.LoaderOptions;
}

type `org.yaml.snakeyaml.constructor.BaseConstructor$RecursiveTuple` {
    _1: java.lang.Object;
    _2: java.lang.Object;
}

type org.yaml.snakeyaml.representer.BaseRepresenter {
    representers: java.util.Map;
    nullRepresenter: org.yaml.snakeyaml.representer.Represent;
    multiRepresenters: java.util.Map;
    defaultScalarStyle: org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    defaultFlowStyle: org.yaml.snakeyaml.DumperOptions$FlowStyle;
    representedObjects: java.util.Map;
    objectToRepresent: java.lang.Object;
    propertyUtils: org.yaml.snakeyaml.introspector.PropertyUtils;
    explicitPropertyUtils: bool;
}

type org.yaml.snakeyaml.representer.BaseRepresenter$1 {
    serialVersionUID: long;
    this$0: org.yaml.snakeyaml.representer.BaseRepresenter;
}

enum org.yaml.snakeyaml.introspector.BeanAccess {
    DEFAULT = 0;
    FIELD = 1;
    PROPERTY = 2;
}

type org.yaml.snakeyaml.tokens.BlockEndToken {
}

type org.yaml.snakeyaml.tokens.BlockEntryToken {
}

type org.yaml.snakeyaml.tokens.BlockMappingStartToken {
}

type org.yaml.snakeyaml.tokens.BlockSequenceStartToken {
}

type org.yaml.snakeyaml.events.CollectionEndEvent {
}

type org.yaml.snakeyaml.nodes.CollectionNode {
    flowStyle: org.yaml.snakeyaml.DumperOptions$FlowStyle;
}

type org.yaml.snakeyaml.events.CollectionStartEvent {
    tag: java.lang.String;
    implicit: bool;
    flowStyle: org.yaml.snakeyaml.DumperOptions$FlowStyle;
}

type org.yaml.snakeyaml.events.CommentEvent {
    `type`: org.yaml.snakeyaml.comments.CommentType;
    value: java.lang.String;
}

type org.yaml.snakeyaml.comments.CommentEventsCollector {
    commentLineList: java.util.List;
    eventSource: java.util.Queue;
    expectedCommentTypes: array<org.yaml.snakeyaml.comments.CommentType>;
}

type org.yaml.snakeyaml.comments.CommentEventsCollector$1 {
    val$parser: org.yaml.snakeyaml.parser.Parser;
    this$0: org.yaml.snakeyaml.comments.CommentEventsCollector;
}

type org.yaml.snakeyaml.comments.CommentLine {
    startMark: org.yaml.snakeyaml.error.Mark;
    endMark: org.yaml.snakeyaml.error.Mark;
    value: java.lang.String;
    commentType: org.yaml.snakeyaml.comments.CommentType;
}

type org.yaml.snakeyaml.tokens.CommentToken {
    `type`: org.yaml.snakeyaml.comments.CommentType;
    value: java.lang.String;
}

enum org.yaml.snakeyaml.comments.CommentType {
    BLANK_LINE = 0;
    BLOCK = 1;
    IN_LINE = 2;
}

type org.yaml.snakeyaml.extensions.compactnotation.CompactConstructor {
    GUESS_COMPACT: java.util.regex.Pattern;
    FIRST_PATTERN: java.util.regex.Pattern;
    PROPERTY_NAME_PATTERN: java.util.regex.Pattern;
    compactConstruct: `org.yaml.snakeyaml.constructor.Construct`;
}

type org.yaml.snakeyaml.extensions.compactnotation.CompactConstructor$ConstructCompactObject {
    this$0: org.yaml.snakeyaml.extensions.compactnotation.CompactConstructor;
}

type org.yaml.snakeyaml.extensions.compactnotation.CompactData {
    prefix: java.lang.String;
    arguments: java.util.List;
    properties: java.util.Map;
}

type org.yaml.snakeyaml.composer.Composer {
    parser: org.yaml.snakeyaml.parser.Parser;
    resolver: org.yaml.snakeyaml.resolver.Resolver;
    anchors: java.util.Map;
    recursiveNodes: java.util.Set;
    nonScalarAliasesCount: int;
    loadingConfig: org.yaml.snakeyaml.LoaderOptions;
    blockCommentsCollector: org.yaml.snakeyaml.comments.CommentEventsCollector;
    inlineCommentsCollector: org.yaml.snakeyaml.comments.CommentEventsCollector;
    nestingDepth: int;
    nestingDepthLimit: int;
}

type org.yaml.snakeyaml.composer.ComposerException {
    serialVersionUID: long;
}

type org.yaml.snakeyaml.scanner.Constant {
    ALPHA_S: java.lang.String;
    LINEBR_S: java.lang.String;
    FULL_LINEBR_S: java.lang.String;
    NULL_OR_LINEBR_S: java.lang.String;
    NULL_BL_LINEBR_S: java.lang.String;
    NULL_BL_T_LINEBR_S: java.lang.String;
    NULL_BL_T_S: java.lang.String;
    URI_CHARS_S: java.lang.String;
    LINEBR: org.yaml.snakeyaml.scanner.Constant;
    NULL_OR_LINEBR: org.yaml.snakeyaml.scanner.Constant;
    NULL_BL_LINEBR: org.yaml.snakeyaml.scanner.Constant;
    NULL_BL_T_LINEBR: org.yaml.snakeyaml.scanner.Constant;
    NULL_BL_T: org.yaml.snakeyaml.scanner.Constant;
    URI_CHARS: org.yaml.snakeyaml.scanner.Constant;
    ALPHA: org.yaml.snakeyaml.scanner.Constant;
    content: java.lang.String;
    contains: array<bool>;
    noASCII: bool;
}

type `org.yaml.snakeyaml.constructor.Construct` {
}

type `org.yaml.snakeyaml.constructor.Constructor` {
}

type `org.yaml.snakeyaml.constructor.Constructor$ConstructMapping` {
    this$0: `org.yaml.snakeyaml.constructor.Constructor`;
}

type `org.yaml.snakeyaml.constructor.Constructor$ConstructScalar` {
    this$0: `org.yaml.snakeyaml.constructor.Constructor`;
}

type `org.yaml.snakeyaml.constructor.Constructor$ConstructSequence` {
    this$0: `org.yaml.snakeyaml.constructor.Constructor`;
}

type `org.yaml.snakeyaml.constructor.Constructor$ConstructYamlObject` {
    this$0: `org.yaml.snakeyaml.constructor.Constructor`;
}

type `org.yaml.snakeyaml.constructor.ConstructorException` {
    serialVersionUID: long;
}

type `org.yaml.snakeyaml.constructor.CustomClassLoaderConstructor` {
    loader: java.lang.ClassLoader;
}

type org.yaml.snakeyaml.tokens.DirectiveToken {
    name: java.lang.String;
    value: java.util.List;
}

type org.yaml.snakeyaml.events.DocumentEndEvent {
    explicit: bool;
}

type org.yaml.snakeyaml.tokens.DocumentEndToken {
}

type org.yaml.snakeyaml.events.DocumentStartEvent {
    explicit: bool;
    `version`: org.yaml.snakeyaml.DumperOptions$Version;
    tags: java.util.Map;
}

type org.yaml.snakeyaml.tokens.DocumentStartToken {
}

type org.yaml.snakeyaml.DumperOptions {
    defaultStyle: org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    defaultFlowStyle: org.yaml.snakeyaml.DumperOptions$FlowStyle;
    canonical: bool;
    allowUnicode: bool;
    allowReadOnlyProperties: bool;
    indent: int;
    indicatorIndent: int;
    indentWithIndicator: bool;
    bestWidth: int;
    splitLines: bool;
    lineBreak: org.yaml.snakeyaml.DumperOptions$LineBreak;
    explicitStart: bool;
    explicitEnd: bool;
    timeZone: java.util.TimeZone;
    maxSimpleKeyLength: int;
    processComments: bool;
    nonPrintableStyle: org.yaml.snakeyaml.DumperOptions$NonPrintableStyle;
    `version`: org.yaml.snakeyaml.DumperOptions$Version;
    tags: java.util.Map;
    prettyFlow: bool;
    anchorGenerator: org.yaml.snakeyaml.serializer.AnchorGenerator;
}

enum org.yaml.snakeyaml.DumperOptions$FlowStyle {
    FLOW = 0;
    BLOCK = 1;
    AUTO = 2;
}

enum org.yaml.snakeyaml.DumperOptions$LineBreak {
    WIN = 0;
    MAC = 1;
    UNIX = 2;
}

enum org.yaml.snakeyaml.DumperOptions$NonPrintableStyle {
    BINARY = 0;
    ESCAPE = 1;
}

enum org.yaml.snakeyaml.DumperOptions$ScalarStyle {
    DOUBLE_QUOTED = 0;
    SINGLE_QUOTED = 1;
    LITERAL = 2;
    FOLDED = 3;
    PLAIN = 4;
}

enum org.yaml.snakeyaml.DumperOptions$Version {
    V1_0 = 0;
    V1_1 = 1;
}

type `org.yaml.snakeyaml.constructor.DuplicateKeyException` {
}

type org.yaml.snakeyaml.emitter.Emitable {
}

type org.yaml.snakeyaml.emitter.Emitter {
    MIN_INDENT: int;
    MAX_INDENT: int;
    SPACE: array<char>;
    SPACES_PATTERN: java.util.regex.Pattern;
    INVALID_ANCHOR: java.util.Set;
    ESCAPE_REPLACEMENTS: java.util.Map;
    DEFAULT_TAG_PREFIXES: java.util.Map;
    stream: java.io.Writer;
    states: org.yaml.snakeyaml.util.ArrayStack;
    `state`: org.yaml.snakeyaml.emitter.EmitterState;
    events: java.util.Queue;
    event: org.yaml.snakeyaml.events.Event;
    indents: org.yaml.snakeyaml.util.ArrayStack;
    indent: int;
    flowLevel: int;
    rootContext: bool;
    mappingContext: bool;
    simpleKeyContext: bool;
    column: int;
    whitespace: bool;
    indention: bool;
    openEnded: bool;
    canonical: bool;
    prettyFlow: bool;
    allowUnicode: bool;
    bestIndent: int;
    indicatorIndent: int;
    indentWithIndicator: bool;
    bestWidth: int;
    bestLineBreak: array<char>;
    splitLines: bool;
    maxSimpleKeyLength: int;
    emitComments: bool;
    tagPrefixes: java.util.Map;
    preparedAnchor: java.lang.String;
    preparedTag: java.lang.String;
    analysis: org.yaml.snakeyaml.emitter.ScalarAnalysis;
    style: org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    blockCommentsCollector: org.yaml.snakeyaml.comments.CommentEventsCollector;
    inlineCommentsCollector: org.yaml.snakeyaml.comments.CommentEventsCollector;
    HANDLE_FORMAT: java.util.regex.Pattern;
    LEADING_ZERO_PATTERN: java.util.regex.Pattern;
}

type org.yaml.snakeyaml.emitter.Emitter$1 {
    $SwitchMap$org$yaml$snakeyaml$DumperOptions$ScalarStyle: array<int>;
}

type org.yaml.snakeyaml.emitter.Emitter$ExpectBlockMappingKey {
    first: bool;
    this$0: org.yaml.snakeyaml.emitter.Emitter;
}

type org.yaml.snakeyaml.emitter.Emitter$ExpectBlockMappingSimpleValue {
    this$0: org.yaml.snakeyaml.emitter.Emitter;
}

type org.yaml.snakeyaml.emitter.Emitter$ExpectBlockMappingValue {
    this$0: org.yaml.snakeyaml.emitter.Emitter;
}

type org.yaml.snakeyaml.emitter.Emitter$ExpectBlockSequenceItem {
    first: bool;
    this$0: org.yaml.snakeyaml.emitter.Emitter;
}

type org.yaml.snakeyaml.emitter.Emitter$ExpectDocumentEnd {
    this$0: org.yaml.snakeyaml.emitter.Emitter;
}

type org.yaml.snakeyaml.emitter.Emitter$ExpectDocumentRoot {
    this$0: org.yaml.snakeyaml.emitter.Emitter;
}

type org.yaml.snakeyaml.emitter.Emitter$ExpectDocumentStart {
    first: bool;
    this$0: org.yaml.snakeyaml.emitter.Emitter;
}

type org.yaml.snakeyaml.emitter.Emitter$ExpectFirstBlockMappingKey {
    this$0: org.yaml.snakeyaml.emitter.Emitter;
}

type org.yaml.snakeyaml.emitter.Emitter$ExpectFirstBlockSequenceItem {
    this$0: org.yaml.snakeyaml.emitter.Emitter;
}

type org.yaml.snakeyaml.emitter.Emitter$ExpectFirstDocumentStart {
    this$0: org.yaml.snakeyaml.emitter.Emitter;
}

type org.yaml.snakeyaml.emitter.Emitter$ExpectFirstFlowMappingKey {
    this$0: org.yaml.snakeyaml.emitter.Emitter;
}

type org.yaml.snakeyaml.emitter.Emitter$ExpectFirstFlowSequenceItem {
    this$0: org.yaml.snakeyaml.emitter.Emitter;
}

type org.yaml.snakeyaml.emitter.Emitter$ExpectFlowMappingKey {
    this$0: org.yaml.snakeyaml.emitter.Emitter;
}

type org.yaml.snakeyaml.emitter.Emitter$ExpectFlowMappingSimpleValue {
    this$0: org.yaml.snakeyaml.emitter.Emitter;
}

type org.yaml.snakeyaml.emitter.Emitter$ExpectFlowMappingValue {
    this$0: org.yaml.snakeyaml.emitter.Emitter;
}

type org.yaml.snakeyaml.emitter.Emitter$ExpectFlowSequenceItem {
    this$0: org.yaml.snakeyaml.emitter.Emitter;
}

type org.yaml.snakeyaml.emitter.Emitter$ExpectNothing {
    this$0: org.yaml.snakeyaml.emitter.Emitter;
}

type org.yaml.snakeyaml.emitter.Emitter$ExpectStreamStart {
    this$0: org.yaml.snakeyaml.emitter.Emitter;
}

type org.yaml.snakeyaml.emitter.EmitterException {
    serialVersionUID: long;
}

type org.yaml.snakeyaml.emitter.EmitterState {
}

type org.yaml.snakeyaml.util.EnumUtils {
}

type org.yaml.snakeyaml.env.EnvScalarConstructor {
    ENV_TAG: org.yaml.snakeyaml.nodes.Tag;
    ENV_FORMAT: java.util.regex.Pattern;
}

type org.yaml.snakeyaml.env.EnvScalarConstructor$1 {
}

type org.yaml.snakeyaml.env.EnvScalarConstructor$ConstructEnv {
    this$0: org.yaml.snakeyaml.env.EnvScalarConstructor;
}

type org.yaml.snakeyaml.external.com.google.gdata.util.common.base.Escaper {
}

type org.yaml.snakeyaml.events.Event {
    startMark: org.yaml.snakeyaml.error.Mark;
    endMark: org.yaml.snakeyaml.error.Mark;
}

enum org.yaml.snakeyaml.events.Event$ID {
    Alias = 0;
    Comment = 1;
    DocumentEnd = 2;
    DocumentStart = 3;
    MappingEnd = 4;
    MappingStart = 5;
    Scalar = 6;
    SequenceEnd = 7;
    SequenceStart = 8;
    StreamEnd = 9;
    StreamStart = 10;
}

type org.yaml.snakeyaml.introspector.FieldProperty {
    field: java.lang.reflect.Field;
}

type org.yaml.snakeyaml.tokens.FlowEntryToken {
}

type org.yaml.snakeyaml.tokens.FlowMappingEndToken {
}

type org.yaml.snakeyaml.tokens.FlowMappingStartToken {
}

type org.yaml.snakeyaml.tokens.FlowSequenceEndToken {
}

type org.yaml.snakeyaml.tokens.FlowSequenceStartToken {
}

type org.yaml.snakeyaml.introspector.GenericProperty {
    genType: java.lang.reflect.Type;
    actualClassesChecked: bool;
    actualClasses: array<java.lang.Class>;
}

type org.yaml.snakeyaml.events.ImplicitTuple {
    plain: bool;
    nonPlain: bool;
}

type org.yaml.snakeyaml.tokens.KeyToken {
}

type org.yaml.snakeyaml.LoaderOptions {
    allowDuplicateKeys: bool;
    wrappedToRootException: bool;
    maxAliasesForCollections: int;
    allowRecursiveKeys: bool;
    processComments: bool;
    enumCaseSensitive: bool;
    nestingDepthLimit: int;
    codePointLimit: int;
    tagInspector: org.yaml.snakeyaml.inspector.TagInspector;
}

type org.yaml.snakeyaml.internal.Logger {
    logger: java.util.logging.Logger;
}

enum org.yaml.snakeyaml.internal.Logger$Level {
    WARNING = 0;
}

type org.yaml.snakeyaml.events.MappingEndEvent {
}

type org.yaml.snakeyaml.nodes.MappingNode {
    value: java.util.List;
    merged: bool;
}

type org.yaml.snakeyaml.events.MappingStartEvent {
}

type org.yaml.snakeyaml.error.Mark {
    name: java.lang.String;
    index: int;
    line: int;
    column: int;
    buffer: array<int>;
    pointer: int;
}

type org.yaml.snakeyaml.error.MarkedYAMLException {
    serialVersionUID: long;
    context: java.lang.String;
    contextMark: org.yaml.snakeyaml.error.Mark;
    problem: java.lang.String;
    problemMark: org.yaml.snakeyaml.error.Mark;
    note: java.lang.String;
}

type org.yaml.snakeyaml.introspector.MethodProperty {
    property: java.beans.PropertyDescriptor;
    readable: bool;
    writable: bool;
}

type org.yaml.snakeyaml.error.MissingEnvironmentVariableException {
}

type org.yaml.snakeyaml.introspector.MissingProperty {
}

type org.yaml.snakeyaml.nodes.Node {
    tag: org.yaml.snakeyaml.nodes.Tag;
    startMark: org.yaml.snakeyaml.error.Mark;
    endMark: org.yaml.snakeyaml.error.Mark;
    `type`: java.lang.Class;
    twoStepsConstruction: bool;
    anchor: java.lang.String;
    inLineComments: java.util.List;
    blockComments: java.util.List;
    endComments: java.util.List;
    resolved: bool;
    useClassConstructor: bool;
}

type org.yaml.snakeyaml.events.NodeEvent {
    anchor: java.lang.String;
}

enum org.yaml.snakeyaml.nodes.NodeId {
    scalar = 0;
    sequence = 1;
    mapping = 2;
    anchor = 3;
}

type org.yaml.snakeyaml.nodes.NodeTuple {
    keyNode: org.yaml.snakeyaml.nodes.Node;
    valueNode: org.yaml.snakeyaml.nodes.Node;
}

type org.yaml.snakeyaml.serializer.NumberAnchorGenerator {
    lastAnchorId: int;
}

type org.yaml.snakeyaml.extensions.compactnotation.PackageCompactConstructor {
    packageName: java.lang.String;
}

type org.yaml.snakeyaml.parser.Parser {
}

type org.yaml.snakeyaml.parser.ParserException {
    serialVersionUID: long;
}

type org.yaml.snakeyaml.parser.ParserImpl {
    DEFAULT_TAGS: java.util.Map;
    scanner: org.yaml.snakeyaml.scanner.Scanner;
    currentEvent: org.yaml.snakeyaml.events.Event;
    states: org.yaml.snakeyaml.util.ArrayStack;
    marks: org.yaml.snakeyaml.util.ArrayStack;
    `state`: org.yaml.snakeyaml.parser.Production;
    directives: org.yaml.snakeyaml.parser.VersionTagsTuple;
}

type org.yaml.snakeyaml.parser.ParserImpl$1 {
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseBlockMappingFirstKey {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseBlockMappingKey {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseBlockMappingValue {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseBlockMappingValueComment {
    tokens: java.util.List;
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseBlockMappingValueCommentList {
    tokens: java.util.List;
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseBlockNode {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseBlockSequenceEntryKey {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseBlockSequenceEntryValue {
    token: org.yaml.snakeyaml.tokens.BlockEntryToken;
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseBlockSequenceFirstEntry {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseDocumentContent {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseDocumentEnd {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseDocumentStart {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseFlowEndComment {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseFlowMappingEmptyValue {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseFlowMappingFirstKey {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseFlowMappingKey {
    first: bool;
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseFlowMappingValue {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseFlowSequenceEntry {
    first: bool;
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseFlowSequenceEntryMappingEnd {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseFlowSequenceEntryMappingKey {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseFlowSequenceEntryMappingValue {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseFlowSequenceFirstEntry {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseImplicitDocumentStart {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseIndentlessSequenceEntryKey {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseIndentlessSequenceEntryValue {
    token: org.yaml.snakeyaml.tokens.BlockEntryToken;
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.parser.ParserImpl$ParseStreamStart {
    this$0: org.yaml.snakeyaml.parser.ParserImpl;
}

type org.yaml.snakeyaml.external.com.google.gdata.util.common.base.PercentEscaper {
    SAFECHARS_URLENCODER: java.lang.String;
    SAFEPATHCHARS_URLENCODER: java.lang.String;
    SAFEQUERYSTRINGCHARS_URLENCODER: java.lang.String;
    URI_ESCAPED_SPACE: array<char>;
    UPPER_HEX_DIGITS: array<char>;
    plusForSpace: bool;
    safeOctets: array<bool>;
}

type org.yaml.snakeyaml.util.PlatformFeatureDetector {
    isRunningOnAndroid: bool;
}

type org.yaml.snakeyaml.parser.Production {
}

type org.yaml.snakeyaml.introspector.Property {
    name: java.lang.String;
    `type`: java.lang.Class;
}

type org.yaml.snakeyaml.introspector.PropertySubstitute {
    log: org.yaml.snakeyaml.internal.Logger;
    targetType: java.lang.Class;
    readMethod: java.lang.String;
    writeMethod: java.lang.String;
    read: java.lang.reflect.Method;
    write: java.lang.reflect.Method;
    field: java.lang.reflect.Field;
    parameters: array<java.lang.Class>;
    delegate: org.yaml.snakeyaml.introspector.Property;
    filler: bool;
}

type org.yaml.snakeyaml.introspector.PropertyUtils {
    propertiesCache: java.util.Map;
    readableProperties: java.util.Map;
    beanAccess: org.yaml.snakeyaml.introspector.BeanAccess;
    allowReadOnlyProperties: bool;
    skipMissingProperties: bool;
    platformFeatureDetector: org.yaml.snakeyaml.util.PlatformFeatureDetector;
    TRANSIENT: java.lang.String;
}

type org.yaml.snakeyaml.reader.ReaderException {
    serialVersionUID: long;
    name: java.lang.String;
    codePoint: int;
    position: int;
}

type org.yaml.snakeyaml.representer.Represent {
}

type org.yaml.snakeyaml.representer.Representer {
    typeDefinitions: java.util.Map;
}

type org.yaml.snakeyaml.representer.Representer$RepresentJavaBean {
    this$0: org.yaml.snakeyaml.representer.Representer;
}

type org.yaml.snakeyaml.resolver.Resolver {
    BOOL: java.util.regex.Pattern;
    FLOAT: java.util.regex.Pattern;
    INT: java.util.regex.Pattern;
    MERGE: java.util.regex.Pattern;
    NULL: java.util.regex.Pattern;
    EMPTY: java.util.regex.Pattern;
    TIMESTAMP: java.util.regex.Pattern;
    VALUE: java.util.regex.Pattern;
    YAML: java.util.regex.Pattern;
    yamlImplicitResolvers: java.util.Map;
}

type org.yaml.snakeyaml.resolver.Resolver$1 {
    $SwitchMap$org$yaml$snakeyaml$nodes$NodeId: array<int>;
}

type org.yaml.snakeyaml.resolver.ResolverTuple {
    tag: org.yaml.snakeyaml.nodes.Tag;
    regexp: java.util.regex.Pattern;
    limit: int;
}

type `org.yaml.snakeyaml.constructor.SafeConstructor` {
    undefinedConstructor: `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructUndefined`;
    BOOL_VALUES: java.util.Map;
    RADIX_MAX: array<array<int>>;
    TIMESTAMP_REGEXP: java.util.regex.Pattern;
    YMD_REGEXP: java.util.regex.Pattern;
}

type `org.yaml.snakeyaml.constructor.SafeConstructor$1` {
    $SwitchMap$org$yaml$snakeyaml$nodes$NodeId: array<int>;
}

type `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructUndefined` {
}

type `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlBinary` {
    this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
}

type `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlBool` {
    this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
}

type `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlFloat` {
    this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
}

type `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlInt` {
    this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
}

type `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlMap` {
    this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
}

type `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlNull` {
    this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
}

type `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlOmap` {
    this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
}

type `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlPairs` {
    this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
}

type `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlSeq` {
    this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
}

type `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlSet` {
    this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
}

type `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlStr` {
    this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
}

type `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlTimestamp` {
    calendar: java.util.Calendar;
}

type org.yaml.snakeyaml.representer.SafeRepresenter {
    classTags: java.util.Map;
    timeZone: java.util.TimeZone;
    nonPrintableStyle: org.yaml.snakeyaml.DumperOptions$NonPrintableStyle;
    MULTILINE_PATTERN: java.util.regex.Pattern;
}

type org.yaml.snakeyaml.representer.SafeRepresenter$IteratorWrapper {
    iter: java.util.Iterator;
}

type org.yaml.snakeyaml.representer.SafeRepresenter$RepresentArray {
    this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
}

type org.yaml.snakeyaml.representer.SafeRepresenter$RepresentBoolean {
    this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
}

type org.yaml.snakeyaml.representer.SafeRepresenter$RepresentByteArray {
    this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
}

type org.yaml.snakeyaml.representer.SafeRepresenter$RepresentDate {
    this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
}

type org.yaml.snakeyaml.representer.SafeRepresenter$RepresentEnum {
    this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
}

type org.yaml.snakeyaml.representer.SafeRepresenter$RepresentIterator {
    this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
}

type org.yaml.snakeyaml.representer.SafeRepresenter$RepresentList {
    this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
}

type org.yaml.snakeyaml.representer.SafeRepresenter$RepresentMap {
    this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
}

type org.yaml.snakeyaml.representer.SafeRepresenter$RepresentNull {
    this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
}

type org.yaml.snakeyaml.representer.SafeRepresenter$RepresentNumber {
    this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
}

type org.yaml.snakeyaml.representer.SafeRepresenter$RepresentPrimitiveArray {
    this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
}

type org.yaml.snakeyaml.representer.SafeRepresenter$RepresentSet {
    this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
}

type org.yaml.snakeyaml.representer.SafeRepresenter$RepresentString {
    this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
}

type org.yaml.snakeyaml.representer.SafeRepresenter$RepresentUuid {
    this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
}

type org.yaml.snakeyaml.emitter.ScalarAnalysis {
    scalar: java.lang.String;
    empty: bool;
    multiline: bool;
    allowFlowPlain: bool;
    allowBlockPlain: bool;
    allowSingleQuoted: bool;
    allowBlock: bool;
}

type org.yaml.snakeyaml.events.ScalarEvent {
    tag: java.lang.String;
    style: org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    value: java.lang.String;
    implicit: org.yaml.snakeyaml.events.ImplicitTuple;
}

type org.yaml.snakeyaml.nodes.ScalarNode {
    style: org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    value: java.lang.String;
}

type org.yaml.snakeyaml.tokens.ScalarToken {
    value: java.lang.String;
    plain: bool;
    style: org.yaml.snakeyaml.DumperOptions$ScalarStyle;
}

type org.yaml.snakeyaml.scanner.Scanner {
}

type org.yaml.snakeyaml.scanner.ScannerException {
    serialVersionUID: long;
}

type org.yaml.snakeyaml.scanner.ScannerImpl {
    NOT_HEXA: java.util.regex.Pattern;
    ESCAPE_REPLACEMENTS: java.util.Map;
    ESCAPE_CODES: java.util.Map;
    reader: org.yaml.snakeyaml.reader.StreamReader;
    done: bool;
    flowLevel: int;
    tokens: java.util.List;
    lastToken: org.yaml.snakeyaml.tokens.Token;
    tokensTaken: int;
    indent: int;
    indents: org.yaml.snakeyaml.util.ArrayStack;
    parseComments: bool;
    loaderOptions: org.yaml.snakeyaml.LoaderOptions;
    allowSimpleKey: bool;
    possibleSimpleKeys: java.util.Map;
}

type org.yaml.snakeyaml.scanner.ScannerImpl$Chomping {
    value: bool;
    increment: int;
}

type org.yaml.snakeyaml.events.SequenceEndEvent {
}

type org.yaml.snakeyaml.nodes.SequenceNode {
    value: java.util.List;
}

type org.yaml.snakeyaml.events.SequenceStartEvent {
}

type org.yaml.snakeyaml.serializer.Serializer {
    emitter: org.yaml.snakeyaml.emitter.Emitable;
    resolver: org.yaml.snakeyaml.resolver.Resolver;
    explicitStart: bool;
    explicitEnd: bool;
    useVersion: org.yaml.snakeyaml.DumperOptions$Version;
    useTags: java.util.Map;
    serializedNodes: java.util.Set;
    anchors: java.util.Map;
    anchorGenerator: org.yaml.snakeyaml.serializer.AnchorGenerator;
    closed: bool;
    explicitRoot: org.yaml.snakeyaml.nodes.Tag;
}

type org.yaml.snakeyaml.serializer.Serializer$1 {
    $SwitchMap$org$yaml$snakeyaml$nodes$NodeId: array<int>;
}

type org.yaml.snakeyaml.serializer.SerializerException {
    serialVersionUID: long;
}

type org.yaml.snakeyaml.scanner.SimpleKey {
    tokenNumber: int;
    required: bool;
    index: int;
    line: int;
    column: int;
    mark: org.yaml.snakeyaml.error.Mark;
}

type org.yaml.snakeyaml.events.StreamEndEvent {
}

type org.yaml.snakeyaml.tokens.StreamEndToken {
}

type org.yaml.snakeyaml.reader.StreamReader {
    name: java.lang.String;
    stream: java.io.Reader;
    dataWindow: array<int>;
    dataLength: int;
    pointer: int;
    eof: bool;
    index: int;
    line: int;
    column: int;
    buffer: array<char>;
    BUFFER_SIZE: int;
}

type org.yaml.snakeyaml.events.StreamStartEvent {
}

type org.yaml.snakeyaml.tokens.StreamStartToken {
}

type org.yaml.snakeyaml.nodes.Tag {
    PREFIX: java.lang.String;
    YAML: org.yaml.snakeyaml.nodes.Tag;
    MERGE: org.yaml.snakeyaml.nodes.Tag;
    SET: org.yaml.snakeyaml.nodes.Tag;
    PAIRS: org.yaml.snakeyaml.nodes.Tag;
    OMAP: org.yaml.snakeyaml.nodes.Tag;
    BINARY: org.yaml.snakeyaml.nodes.Tag;
    INT: org.yaml.snakeyaml.nodes.Tag;
    FLOAT: org.yaml.snakeyaml.nodes.Tag;
    TIMESTAMP: org.yaml.snakeyaml.nodes.Tag;
    BOOL: org.yaml.snakeyaml.nodes.Tag;
    NULL: org.yaml.snakeyaml.nodes.Tag;
    STR: org.yaml.snakeyaml.nodes.Tag;
    SEQ: org.yaml.snakeyaml.nodes.Tag;
    MAP: org.yaml.snakeyaml.nodes.Tag;
    standardTags: java.util.Set;
    COMMENT: org.yaml.snakeyaml.nodes.Tag;
    COMPATIBILITY_MAP: java.util.Map;
    value: java.lang.String;
    secondary: bool;
}

type org.yaml.snakeyaml.inspector.TagInspector {
}

type org.yaml.snakeyaml.tokens.TagToken {
    value: org.yaml.snakeyaml.tokens.TagTuple;
}

type org.yaml.snakeyaml.tokens.TagTuple {
    handle: java.lang.String;
    suffix: java.lang.String;
}

type org.yaml.snakeyaml.tokens.Token {
    startMark: org.yaml.snakeyaml.error.Mark;
    endMark: org.yaml.snakeyaml.error.Mark;
}

enum org.yaml.snakeyaml.tokens.Token$ID {
    Alias = 0;
    Anchor = 1;
    BlockEnd = 2;
    BlockEntry = 3;
    BlockMappingStart = 4;
    BlockSequenceStart = 5;
    Directive = 6;
    DocumentEnd = 7;
    DocumentStart = 8;
    FlowEntry = 9;
    FlowMappingEnd = 10;
    FlowMappingStart = 11;
    FlowSequenceEnd = 12;
    FlowSequenceStart = 13;
    Key = 14;
    Scalar = 15;
    StreamEnd = 16;
    StreamStart = 17;
    Tag = 18;
    Value = 19;
    Whitespace = 20;
    Comment = 21;
    Error = 22;
}

type org.yaml.snakeyaml.inspector.TrustedPrefixesTagInspector {
    trustedList: java.util.List;
}

type org.yaml.snakeyaml.inspector.TrustedTagInspector {
}

type org.yaml.snakeyaml.TypeDescription {
    log: org.yaml.snakeyaml.internal.Logger;
    `type`: java.lang.Class;
    impl: java.lang.Class;
    tag: org.yaml.snakeyaml.nodes.Tag;
    dumpProperties: java.util.Set;
    propertyUtils: org.yaml.snakeyaml.introspector.PropertyUtils;
    delegatesChecked: bool;
    properties: java.util.Map;
    excludes: java.util.Set;
    includes: array<java.lang.String>;
    beanAccess: org.yaml.snakeyaml.introspector.BeanAccess;
}

type org.yaml.snakeyaml.inspector.UnTrustedTagInspector {
}

type org.yaml.snakeyaml.external.com.google.gdata.util.common.base.UnicodeEscaper {
    DEST_PAD: int;
    DEST_TL: java.lang.ThreadLocal;
    $assertionsDisabled: bool;
}

type org.yaml.snakeyaml.external.com.google.gdata.util.common.base.UnicodeEscaper$1 {
    pendingHighSurrogate: int;
    decodedChars: array<char>;
    val$out: java.lang.Appendable;
    this$0: org.yaml.snakeyaml.external.com.google.gdata.util.common.base.UnicodeEscaper;
}

type org.yaml.snakeyaml.external.com.google.gdata.util.common.base.UnicodeEscaper$2 {
}

type org.yaml.snakeyaml.reader.UnicodeReader {
    UTF8: java.nio.charset.Charset;
    UTF16BE: java.nio.charset.Charset;
    UTF16LE: java.nio.charset.Charset;
    internalIn: java.io.PushbackInputStream;
    internalIn2: java.io.InputStreamReader;
    BOM_SIZE: int;
}

type org.yaml.snakeyaml.util.UriEncoder {
    UTF8Decoder: java.nio.charset.CharsetDecoder;
    SAFE_CHARS: java.lang.String;
    escaper: org.yaml.snakeyaml.external.com.google.gdata.util.common.base.Escaper;
}

type org.yaml.snakeyaml.tokens.ValueToken {
}

type org.yaml.snakeyaml.parser.VersionTagsTuple {
    `version`: org.yaml.snakeyaml.DumperOptions$Version;
    tags: java.util.Map;
}

type org.yaml.snakeyaml.error.YAMLException {
    serialVersionUID: long;
}

type org.yaml.snakeyaml.Yaml {
    resolver: org.yaml.snakeyaml.resolver.Resolver;
    name: java.lang.String;
    `constructor`: `org.yaml.snakeyaml.constructor.BaseConstructor`;
    representer: org.yaml.snakeyaml.representer.Representer;
    dumperOptions: org.yaml.snakeyaml.DumperOptions;
    loadingConfig: org.yaml.snakeyaml.LoaderOptions;
}

type org.yaml.snakeyaml.Yaml$1 {
    this$0: org.yaml.snakeyaml.Yaml;
}

type org.yaml.snakeyaml.Yaml$2 {
    val$composer: org.yaml.snakeyaml.composer.Composer;
    this$0: org.yaml.snakeyaml.Yaml;
}

type org.yaml.snakeyaml.Yaml$3 {
    val$parser: org.yaml.snakeyaml.parser.Parser;
    this$0: org.yaml.snakeyaml.Yaml;
}

type org.yaml.snakeyaml.Yaml$EventIterable {
    iterator: java.util.Iterator;
}

type org.yaml.snakeyaml.Yaml$NodeIterable {
    iterator: java.util.Iterator;
}

type org.yaml.snakeyaml.Yaml$SilentEmitter {
    events: java.util.List;
}

type org.yaml.snakeyaml.Yaml$YamlIterable {
    iterator: java.util.Iterator;
}

type `module-info` {
}

automaton `org.yaml.snakeyaml.constructor.AbstractConstruct` : `org.yaml.snakeyaml.constructor.AbstractConstruct` {
    fun construct2ndStep(arg0: org.yaml.snakeyaml.nodes.Node, arg1: java.lang.Object): void;
}
automaton org.yaml.snakeyaml.events.AliasEvent (val arg0: java.lang.String, val arg1: org.yaml.snakeyaml.error.Mark, val arg2: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.events.AliasEvent {
    fun getEventId(): org.yaml.snakeyaml.events.Event$ID;
}
automaton org.yaml.snakeyaml.tokens.AliasToken (val arg0: java.lang.String, val arg1: org.yaml.snakeyaml.error.Mark, val arg2: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.AliasToken {
    val value: java.lang.String;
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
    
    fun getValue(): java.lang.String;
}
automaton org.yaml.snakeyaml.serializer.AnchorGenerator : org.yaml.snakeyaml.serializer.AnchorGenerator {
    fun nextAnchor(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.String;
}
automaton org.yaml.snakeyaml.nodes.AnchorNode (val arg0: org.yaml.snakeyaml.nodes.Node) : org.yaml.snakeyaml.nodes.AnchorNode {
    val realNode: org.yaml.snakeyaml.nodes.Node;
    fun getNodeId(): org.yaml.snakeyaml.nodes.NodeId;
    
    fun getRealNode(): org.yaml.snakeyaml.nodes.Node;
}
automaton org.yaml.snakeyaml.tokens.AnchorToken (val arg0: java.lang.String, val arg1: org.yaml.snakeyaml.error.Mark, val arg2: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.AnchorToken {
    val value: java.lang.String;
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
    
    fun getValue(): java.lang.String;
}
automaton org.yaml.snakeyaml.util.ArrayStack (val arg0: int) : org.yaml.snakeyaml.util.ArrayStack {
    val stack: java.util.ArrayList;
    fun clear(): void;
    
    fun isEmpty(): bool;
    
    fun pop(): java.lang.Object;
    
    fun push(arg0: java.lang.Object): void;
}
automaton org.yaml.snakeyaml.util.ArrayUtils : org.yaml.snakeyaml.util.ArrayUtils {
    fun toUnmodifiableCompositeList(arg0: array, arg1: array): java.util.List;
    
    fun toUnmodifiableList(arg0: array): java.util.List;
}
automaton org.yaml.snakeyaml.util.ArrayUtils$CompositeUnmodifiableArrayList (val arg0: array<java.lang.Object>, val arg1: array<java.lang.Object>) : org.yaml.snakeyaml.util.ArrayUtils$CompositeUnmodifiableArrayList {
    val array1: array<java.lang.Object>;
    val array2: array<java.lang.Object>;
    fun get(arg0: int): java.lang.Object;
    
    fun size(): int;
}
automaton org.yaml.snakeyaml.util.ArrayUtils$UnmodifiableArrayList (val arg0: array<java.lang.Object>) : org.yaml.snakeyaml.util.ArrayUtils$UnmodifiableArrayList {
    val array: array<java.lang.Object>;
    fun get(arg0: int): java.lang.Object;
    
    fun size(): int;
}
automaton org.yaml.snakeyaml.external.biz.base64Coder.Base64Coder : org.yaml.snakeyaml.external.biz.base64Coder.Base64Coder {
    val systemLineSeparator: java.lang.String;
    val map1: array<char>;
    val map2: array<byte>;
    fun decode(arg0: java.lang.String): array<byte>;
    
    fun decode(arg0: array): array<byte>;
    
    fun decode(arg0: array, arg1: int, arg2: int): array<byte>;
    
    fun decodeLines(arg0: java.lang.String): array<byte>;
    
    fun decodeString(arg0: java.lang.String): java.lang.String;
    
    fun encode(arg0: array): array<char>;
    
    fun encode(arg0: array, arg1: int): array<char>;
    
    fun encode(arg0: array, arg1: int, arg2: int): array<char>;
    
    fun encodeLines(arg0: array): java.lang.String;
    
    fun encodeLines(arg0: array, arg1: int, arg2: int, arg3: int, arg4: java.lang.String): java.lang.String;
    
    fun encodeString(arg0: java.lang.String): java.lang.String;
    
    fun `static-constructor`(): void {
        assigns systemLineSeparator;
        assigns map1;
        assigns map2;
    }
}
automaton `org.yaml.snakeyaml.constructor.BaseConstructor` (val arg0: org.yaml.snakeyaml.LoaderOptions) : `org.yaml.snakeyaml.constructor.BaseConstructor` {
    val NOT_INSTANTIATED_OBJECT: java.lang.Object;
    val yamlClassConstructors: java.util.Map;
    val yamlConstructors: java.util.Map;
    val yamlMultiConstructors: java.util.Map;
    val composer: org.yaml.snakeyaml.composer.Composer;
    val constructedObjects: java.util.Map;
    val recursiveObjects: java.util.Set;
    val maps2fill: java.util.ArrayList;
    val sets2fill: java.util.ArrayList;
    val rootTag: org.yaml.snakeyaml.nodes.Tag;
    val propertyUtils: org.yaml.snakeyaml.introspector.PropertyUtils;
    val explicitPropertyUtils: bool;
    val allowDuplicateKeys: bool;
    val wrappedToRootException: bool;
    val enumCaseSensitive: bool;
    val typeDefinitions: java.util.Map;
    val typeTags: java.util.Map;
    val loadingConfig: org.yaml.snakeyaml.LoaderOptions;
    fun addTypeDescription(arg0: org.yaml.snakeyaml.TypeDescription): org.yaml.snakeyaml.TypeDescription {
        assigns propertyUtils;
        assigns arg0.propertyUtils;
    }
    
    fun checkData(): bool;
    
    fun constructArray(arg0: org.yaml.snakeyaml.nodes.SequenceNode): java.lang.Object;
    
    fun constructArrayStep2(arg0: org.yaml.snakeyaml.nodes.SequenceNode, arg1: java.lang.Object): java.lang.Object;
    
    fun constructDocument(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object {
        assigns arg0.`type`;
        assigns arg0.twoStepsConstruction;
    }
    
    fun constructMapping(arg0: org.yaml.snakeyaml.nodes.MappingNode): java.util.Map {
        assigns arg0.value;
    }
    
    fun constructMapping2ndStep(arg0: org.yaml.snakeyaml.nodes.MappingNode, arg1: java.util.Map): void;
    
    fun constructObject(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object {
        assigns arg0.`type`;
        assigns arg0.twoStepsConstruction;
    }
    
    fun constructObjectNoCheck(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object {
        assigns arg0.`type`;
        assigns arg0.twoStepsConstruction;
    }
    
    fun constructScalar(arg0: org.yaml.snakeyaml.nodes.ScalarNode): java.lang.String;
    
    fun constructSequence(arg0: org.yaml.snakeyaml.nodes.SequenceNode): java.util.List;
    
    fun constructSequenceStep2(arg0: org.yaml.snakeyaml.nodes.SequenceNode, arg1: java.util.Collection): void;
    
    fun constructSet(arg0: org.yaml.snakeyaml.nodes.SequenceNode): java.util.Set {
        assigns arg0.value;
    }
    
    fun constructSet(arg0: org.yaml.snakeyaml.nodes.MappingNode): java.util.Set;
    
    fun constructSet2ndStep(arg0: org.yaml.snakeyaml.nodes.MappingNode, arg1: java.util.Set): void;
    
    fun createArray(arg0: java.lang.Class, arg1: int): java.lang.Object;
    
    fun createDefaultList(arg0: int): java.util.List;
    
    fun createDefaultMap(arg0: int): java.util.Map;
    
    fun createDefaultSet(arg0: int): java.util.Set;
    
    fun fillRecursive(): void;
    
    fun finalizeConstruction(arg0: org.yaml.snakeyaml.nodes.Node, arg1: java.lang.Object): java.lang.Object;
    
    fun getConstructor(arg0: org.yaml.snakeyaml.nodes.Node): `org.yaml.snakeyaml.constructor.Construct`;
    
    fun getData(): java.lang.Object;
    
    fun getLoadingConfig(): org.yaml.snakeyaml.LoaderOptions;
    
    fun getPropertyUtils(): org.yaml.snakeyaml.introspector.PropertyUtils {
        assigns propertyUtils;
    }
    
    fun getSingleData(arg0: java.lang.Class): java.lang.Object;
    
    fun isAllowDuplicateKeys(): bool;
    
    fun isEnumCaseSensitive(): bool;
    
    fun isExplicitPropertyUtils(): bool;
    
    fun isWrappedToRootException(): bool;
    
    fun newInstance(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
    
    fun newInstance(arg0: java.lang.Class, arg1: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
    
    fun newInstance(arg0: java.lang.Class, arg1: org.yaml.snakeyaml.nodes.Node, arg2: bool): java.lang.Object;
    
    fun newList(arg0: org.yaml.snakeyaml.nodes.SequenceNode): java.util.List;
    
    fun newMap(arg0: org.yaml.snakeyaml.nodes.MappingNode): java.util.Map;
    
    fun newSet(arg0: org.yaml.snakeyaml.nodes.CollectionNode): java.util.Set;
    
    fun postponeMapFilling(arg0: java.util.Map, arg1: java.lang.Object, arg2: java.lang.Object): void;
    
    fun postponeSetFilling(arg0: java.util.Set, arg1: java.lang.Object): void;
    
    fun setAllowDuplicateKeys(arg0: bool): void {
        assigns allowDuplicateKeys;
    }
    
    fun setComposer(arg0: org.yaml.snakeyaml.composer.Composer): void {
        assigns composer;
    }
    
    fun setEnumCaseSensitive(arg0: bool): void {
        assigns enumCaseSensitive;
    }
    
    fun setPropertyUtils(arg0: org.yaml.snakeyaml.introspector.PropertyUtils): void {
        assigns propertyUtils;
        assigns explicitPropertyUtils;
    }
    
    fun setWrappedToRootException(arg0: bool): void {
        assigns wrappedToRootException;
    }
    
    fun `static-constructor`(): void {
        assigns NOT_INSTANTIATED_OBJECT;
    }
}
automaton `org.yaml.snakeyaml.constructor.BaseConstructor$RecursiveTuple` (val arg0: java.lang.Object, val arg1: java.lang.Object) : `org.yaml.snakeyaml.constructor.BaseConstructor$RecursiveTuple` {
    val _1: java.lang.Object;
    val _2: java.lang.Object;
    fun _1(): java.lang.Object;
    
    fun _2(): java.lang.Object;
}
automaton org.yaml.snakeyaml.representer.BaseRepresenter : org.yaml.snakeyaml.representer.BaseRepresenter {
    val representers: java.util.Map;
    val nullRepresenter: org.yaml.snakeyaml.representer.Represent;
    val multiRepresenters: java.util.Map;
    val defaultScalarStyle: org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    val defaultFlowStyle: org.yaml.snakeyaml.DumperOptions$FlowStyle;
    val representedObjects: java.util.Map;
    val objectToRepresent: java.lang.Object;
    val propertyUtils: org.yaml.snakeyaml.introspector.PropertyUtils;
    val explicitPropertyUtils: bool;
    fun getDefaultFlowStyle(): org.yaml.snakeyaml.DumperOptions$FlowStyle;
    
    fun getDefaultScalarStyle(): org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    
    fun getPropertyUtils(): org.yaml.snakeyaml.introspector.PropertyUtils {
        assigns propertyUtils;
    }
    
    fun isExplicitPropertyUtils(): bool;
    
    fun represent(arg0: java.lang.Object): org.yaml.snakeyaml.nodes.Node {
        assigns objectToRepresent;
    }
    
    fun representData(arg0: java.lang.Object): org.yaml.snakeyaml.nodes.Node {
        assigns objectToRepresent;
    }
    
    fun representMapping(arg0: org.yaml.snakeyaml.nodes.Tag, arg1: java.util.Map, arg2: org.yaml.snakeyaml.DumperOptions$FlowStyle): org.yaml.snakeyaml.nodes.Node {
        assigns objectToRepresent;
    }
    
    fun representScalar(arg0: org.yaml.snakeyaml.nodes.Tag, arg1: java.lang.String, arg2: org.yaml.snakeyaml.DumperOptions$ScalarStyle): org.yaml.snakeyaml.nodes.Node;
    
    fun representScalar(arg0: org.yaml.snakeyaml.nodes.Tag, arg1: java.lang.String): org.yaml.snakeyaml.nodes.Node;
    
    fun representSequence(arg0: org.yaml.snakeyaml.nodes.Tag, arg1: java.lang.Iterable, arg2: org.yaml.snakeyaml.DumperOptions$FlowStyle): org.yaml.snakeyaml.nodes.Node {
        assigns objectToRepresent;
    }
    
    fun setDefaultFlowStyle(arg0: org.yaml.snakeyaml.DumperOptions$FlowStyle): void {
        assigns defaultFlowStyle;
    }
    
    fun setDefaultScalarStyle(arg0: org.yaml.snakeyaml.DumperOptions$ScalarStyle): void {
        assigns defaultScalarStyle;
    }
    
    fun setPropertyUtils(arg0: org.yaml.snakeyaml.introspector.PropertyUtils): void {
        assigns propertyUtils;
        assigns explicitPropertyUtils;
    }
}
automaton org.yaml.snakeyaml.representer.BaseRepresenter$1 (val arg0: org.yaml.snakeyaml.representer.BaseRepresenter) : org.yaml.snakeyaml.representer.BaseRepresenter$1 {
    val serialVersionUID: long;
    val this$0: org.yaml.snakeyaml.representer.BaseRepresenter;
    fun put(arg0: java.lang.Object, arg1: org.yaml.snakeyaml.nodes.Node): org.yaml.snakeyaml.nodes.Node;
    
    fun put(arg0: java.lang.Object, arg1: java.lang.Object): java.lang.Object;
}
automaton org.yaml.snakeyaml.introspector.BeanAccess (val arg0: java.lang.String, val arg1: int) : org.yaml.snakeyaml.introspector.BeanAccess {
    val DEFAULT: org.yaml.snakeyaml.introspector.BeanAccess;
    val FIELD: org.yaml.snakeyaml.introspector.BeanAccess;
    val PROPERTY: org.yaml.snakeyaml.introspector.BeanAccess;
    val $VALUES: array<org.yaml.snakeyaml.introspector.BeanAccess>;
    fun `static-constructor`(): void {
        assigns DEFAULT;
        assigns FIELD;
        assigns PROPERTY;
        assigns $VALUES;
    }
    
    fun valueOf(arg0: java.lang.String): org.yaml.snakeyaml.introspector.BeanAccess;
    
    fun values(): array<org.yaml.snakeyaml.introspector.BeanAccess>;
}
automaton org.yaml.snakeyaml.tokens.BlockEndToken (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.BlockEndToken {
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
}
automaton org.yaml.snakeyaml.tokens.BlockEntryToken (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.BlockEntryToken {
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
}
automaton org.yaml.snakeyaml.tokens.BlockMappingStartToken (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.BlockMappingStartToken {
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
}
automaton org.yaml.snakeyaml.tokens.BlockSequenceStartToken (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.BlockSequenceStartToken {
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
}
automaton org.yaml.snakeyaml.events.CollectionEndEvent (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.events.CollectionEndEvent {
}
automaton org.yaml.snakeyaml.nodes.CollectionNode (val arg0: org.yaml.snakeyaml.nodes.Tag, val arg1: org.yaml.snakeyaml.error.Mark, val arg2: org.yaml.snakeyaml.error.Mark, val arg3: org.yaml.snakeyaml.DumperOptions$FlowStyle) : org.yaml.snakeyaml.nodes.CollectionNode {
    val flowStyle: org.yaml.snakeyaml.DumperOptions$FlowStyle;
    fun getFlowStyle(): org.yaml.snakeyaml.DumperOptions$FlowStyle;
    
    fun getValue(): java.util.List;
    
    fun setEndMark(arg0: org.yaml.snakeyaml.error.Mark): void;
    
    fun setFlowStyle(arg0: org.yaml.snakeyaml.DumperOptions$FlowStyle): void {
        assigns flowStyle;
    }
}
automaton org.yaml.snakeyaml.events.CollectionStartEvent (val arg0: java.lang.String, val arg1: java.lang.String, val arg2: bool, val arg3: org.yaml.snakeyaml.error.Mark, val arg4: org.yaml.snakeyaml.error.Mark, val arg5: org.yaml.snakeyaml.DumperOptions$FlowStyle) : org.yaml.snakeyaml.events.CollectionStartEvent {
    val tag: java.lang.String;
    val implicit: bool;
    val flowStyle: org.yaml.snakeyaml.DumperOptions$FlowStyle;
    fun getArguments(): java.lang.String;
    
    fun getFlowStyle(): org.yaml.snakeyaml.DumperOptions$FlowStyle;
    
    fun getImplicit(): bool;
    
    fun getTag(): java.lang.String;
    
    fun isFlow(): bool;
}
automaton org.yaml.snakeyaml.events.CommentEvent (val arg0: org.yaml.snakeyaml.comments.CommentType, val arg1: java.lang.String, val arg2: org.yaml.snakeyaml.error.Mark, val arg3: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.events.CommentEvent {
    val `type`: org.yaml.snakeyaml.comments.CommentType;
    val value: java.lang.String;
    fun getArguments(): java.lang.String;
    
    fun getCommentType(): org.yaml.snakeyaml.comments.CommentType;
    
    fun getEventId(): org.yaml.snakeyaml.events.Event$ID;
    
    fun getValue(): java.lang.String;
}
automaton org.yaml.snakeyaml.comments.CommentEventsCollector (val arg0: org.yaml.snakeyaml.parser.Parser, val arg1: array<org.yaml.snakeyaml.comments.CommentType>) : org.yaml.snakeyaml.comments.CommentEventsCollector {
    val commentLineList: java.util.List;
    val eventSource: java.util.Queue;
    val expectedCommentTypes: array<org.yaml.snakeyaml.comments.CommentType>;
    fun collectEvents(): org.yaml.snakeyaml.comments.CommentEventsCollector;
    
    fun collectEvents(arg0: org.yaml.snakeyaml.events.Event): org.yaml.snakeyaml.events.Event;
    
    fun collectEventsAndPoll(arg0: org.yaml.snakeyaml.events.Event): org.yaml.snakeyaml.events.Event;
    
    fun consume(): java.util.List {
        assigns commentLineList;
    }
    
    fun isEmpty(): bool;
    
    fun isEventExpected(arg0: org.yaml.snakeyaml.events.Event): bool;
}
automaton org.yaml.snakeyaml.comments.CommentEventsCollector$1 (val arg0: org.yaml.snakeyaml.comments.CommentEventsCollector, val arg1: org.yaml.snakeyaml.parser.Parser) : org.yaml.snakeyaml.comments.CommentEventsCollector$1 {
    val val$parser: org.yaml.snakeyaml.parser.Parser;
    val this$0: org.yaml.snakeyaml.comments.CommentEventsCollector;
    fun iterator(): java.util.Iterator;
    
    fun offer(arg0: org.yaml.snakeyaml.events.Event): bool;
    
    fun offer(arg0: java.lang.Object): bool;
    
    fun peek(): org.yaml.snakeyaml.events.Event;
    
    fun peek(): java.lang.Object;
    
    fun poll(): org.yaml.snakeyaml.events.Event;
    
    fun poll(): java.lang.Object;
    
    fun size(): int;
}
automaton org.yaml.snakeyaml.comments.CommentLine (val arg0: org.yaml.snakeyaml.events.CommentEvent) : org.yaml.snakeyaml.comments.CommentLine {
    val startMark: org.yaml.snakeyaml.error.Mark;
    val endMark: org.yaml.snakeyaml.error.Mark;
    val value: java.lang.String;
    val commentType: org.yaml.snakeyaml.comments.CommentType;
    fun getCommentType(): org.yaml.snakeyaml.comments.CommentType;
    
    fun getEndMark(): org.yaml.snakeyaml.error.Mark;
    
    fun getStartMark(): org.yaml.snakeyaml.error.Mark;
    
    fun getValue(): java.lang.String;
    
    fun toString(): java.lang.String;
}
automaton org.yaml.snakeyaml.tokens.CommentToken (val arg0: org.yaml.snakeyaml.comments.CommentType, val arg1: java.lang.String, val arg2: org.yaml.snakeyaml.error.Mark, val arg3: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.CommentToken {
    val `type`: org.yaml.snakeyaml.comments.CommentType;
    val value: java.lang.String;
    fun getCommentType(): org.yaml.snakeyaml.comments.CommentType;
    
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
    
    fun getValue(): java.lang.String;
}
automaton org.yaml.snakeyaml.comments.CommentType (val arg0: java.lang.String, val arg1: int) : org.yaml.snakeyaml.comments.CommentType {
    val BLANK_LINE: org.yaml.snakeyaml.comments.CommentType;
    val BLOCK: org.yaml.snakeyaml.comments.CommentType;
    val IN_LINE: org.yaml.snakeyaml.comments.CommentType;
    val $VALUES: array<org.yaml.snakeyaml.comments.CommentType>;
    fun `static-constructor`(): void {
        assigns BLANK_LINE;
        assigns BLOCK;
        assigns IN_LINE;
        assigns $VALUES;
    }
    
    fun valueOf(arg0: java.lang.String): org.yaml.snakeyaml.comments.CommentType;
    
    fun values(): array<org.yaml.snakeyaml.comments.CommentType>;
}
automaton org.yaml.snakeyaml.extensions.compactnotation.CompactConstructor (val arg0: org.yaml.snakeyaml.LoaderOptions) : org.yaml.snakeyaml.extensions.compactnotation.CompactConstructor {
    val GUESS_COMPACT: java.util.regex.Pattern;
    val FIRST_PATTERN: java.util.regex.Pattern;
    val PROPERTY_NAME_PATTERN: java.util.regex.Pattern;
    val compactConstruct: `org.yaml.snakeyaml.constructor.Construct`;
    fun access$000(arg0: org.yaml.snakeyaml.extensions.compactnotation.CompactConstructor, arg1: org.yaml.snakeyaml.nodes.SequenceNode): java.util.List;
    
    fun access$100(arg0: org.yaml.snakeyaml.extensions.compactnotation.CompactConstructor, arg1: org.yaml.snakeyaml.nodes.ScalarNode): java.lang.String;
    
    fun applySequence(arg0: java.lang.Object, arg1: java.util.List): void;
    
    fun constructCompactFormat(arg0: org.yaml.snakeyaml.nodes.ScalarNode, arg1: org.yaml.snakeyaml.extensions.compactnotation.CompactData): java.lang.Object;
    
    fun createCompactConstruct(): `org.yaml.snakeyaml.constructor.Construct`;
    
    fun createInstance(arg0: org.yaml.snakeyaml.nodes.ScalarNode, arg1: org.yaml.snakeyaml.extensions.compactnotation.CompactData): java.lang.Object;
    
    fun getCompactConstruct(): `org.yaml.snakeyaml.constructor.Construct` {
        assigns compactConstruct;
    }
    
    fun getCompactData(arg0: java.lang.String): org.yaml.snakeyaml.extensions.compactnotation.CompactData;
    
    fun getConstructor(arg0: org.yaml.snakeyaml.nodes.Node): `org.yaml.snakeyaml.constructor.Construct` {
        assigns compactConstruct;
    }
    
    fun getSequencePropertyName(arg0: java.lang.Class): java.lang.String;
    
    fun setProperties(arg0: java.lang.Object, arg1: java.util.Map): void;
    
    fun `static-constructor`(): void {
        assigns GUESS_COMPACT;
        assigns FIRST_PATTERN;
        assigns PROPERTY_NAME_PATTERN;
    }
}
automaton org.yaml.snakeyaml.extensions.compactnotation.CompactConstructor$ConstructCompactObject (val arg0: org.yaml.snakeyaml.extensions.compactnotation.CompactConstructor) : org.yaml.snakeyaml.extensions.compactnotation.CompactConstructor$ConstructCompactObject {
    val this$0: org.yaml.snakeyaml.extensions.compactnotation.CompactConstructor;
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object {
        assigns arg0.twoStepsConstruction;
    }
    
    fun construct2ndStep(arg0: org.yaml.snakeyaml.nodes.Node, arg1: java.lang.Object): void;
}
automaton org.yaml.snakeyaml.extensions.compactnotation.CompactData (val arg0: java.lang.String) : org.yaml.snakeyaml.extensions.compactnotation.CompactData {
    val prefix: java.lang.String;
    val arguments: java.util.List;
    val properties: java.util.Map;
    fun getArguments(): java.util.List;
    
    fun getPrefix(): java.lang.String;
    
    fun getProperties(): java.util.Map;
    
    fun toString(): java.lang.String;
}
automaton org.yaml.snakeyaml.composer.Composer (val arg0: org.yaml.snakeyaml.parser.Parser, val arg1: org.yaml.snakeyaml.resolver.Resolver, val arg2: org.yaml.snakeyaml.LoaderOptions) : org.yaml.snakeyaml.composer.Composer {
    val parser: org.yaml.snakeyaml.parser.Parser;
    val resolver: org.yaml.snakeyaml.resolver.Resolver;
    val anchors: java.util.Map;
    val recursiveNodes: java.util.Set;
    val nonScalarAliasesCount: int;
    val loadingConfig: org.yaml.snakeyaml.LoaderOptions;
    val blockCommentsCollector: org.yaml.snakeyaml.comments.CommentEventsCollector;
    val inlineCommentsCollector: org.yaml.snakeyaml.comments.CommentEventsCollector;
    val nestingDepth: int;
    val nestingDepthLimit: int;
    fun checkNode(): bool;
    
    fun composeKeyNode(arg0: org.yaml.snakeyaml.nodes.MappingNode): org.yaml.snakeyaml.nodes.Node {
        assigns nonScalarAliasesCount;
        assigns nestingDepth;
    }
    
    fun composeMappingChildren(arg0: java.util.List, arg1: org.yaml.snakeyaml.nodes.MappingNode): void {
        assigns nonScalarAliasesCount;
        assigns nestingDepth;
        assigns arg1.merged;
    }
    
    fun composeMappingNode(arg0: java.lang.String): org.yaml.snakeyaml.nodes.Node {
        assigns nonScalarAliasesCount;
        assigns nestingDepth;
    }
    
    fun composeNode(arg0: org.yaml.snakeyaml.nodes.Node): org.yaml.snakeyaml.nodes.Node {
        assigns nonScalarAliasesCount;
        assigns nestingDepth;
    }
    
    fun composeScalarNode(arg0: java.lang.String, arg1: java.util.List): org.yaml.snakeyaml.nodes.Node;
    
    fun composeSequenceNode(arg0: java.lang.String): org.yaml.snakeyaml.nodes.Node {
        assigns nonScalarAliasesCount;
        assigns nestingDepth;
    }
    
    fun composeValueNode(arg0: org.yaml.snakeyaml.nodes.MappingNode): org.yaml.snakeyaml.nodes.Node {
        assigns nonScalarAliasesCount;
        assigns nestingDepth;
    }
    
    fun decreaseNestingDepth(): void {
        assigns nestingDepth;
    }
    
    fun getNode(): org.yaml.snakeyaml.nodes.Node {
        assigns nonScalarAliasesCount;
        assigns nestingDepth;
    }
    
    fun getSingleNode(): org.yaml.snakeyaml.nodes.Node {
        assigns nonScalarAliasesCount;
        assigns nestingDepth;
    }
    
    fun increaseNestingDepth(): void {
        assigns nestingDepth;
    }
}
automaton org.yaml.snakeyaml.composer.ComposerException (val arg0: java.lang.String, val arg1: org.yaml.snakeyaml.error.Mark, val arg2: java.lang.String, val arg3: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.composer.ComposerException {
    val serialVersionUID: long;
}
automaton org.yaml.snakeyaml.scanner.Constant (val arg0: java.lang.String) : org.yaml.snakeyaml.scanner.Constant {
    val ALPHA_S: java.lang.String;
    val LINEBR_S: java.lang.String;
    val FULL_LINEBR_S: java.lang.String;
    val NULL_OR_LINEBR_S: java.lang.String;
    val NULL_BL_LINEBR_S: java.lang.String;
    val NULL_BL_T_LINEBR_S: java.lang.String;
    val NULL_BL_T_S: java.lang.String;
    val URI_CHARS_S: java.lang.String;
    val LINEBR: org.yaml.snakeyaml.scanner.Constant;
    val NULL_OR_LINEBR: org.yaml.snakeyaml.scanner.Constant;
    val NULL_BL_LINEBR: org.yaml.snakeyaml.scanner.Constant;
    val NULL_BL_T_LINEBR: org.yaml.snakeyaml.scanner.Constant;
    val NULL_BL_T: org.yaml.snakeyaml.scanner.Constant;
    val URI_CHARS: org.yaml.snakeyaml.scanner.Constant;
    val ALPHA: org.yaml.snakeyaml.scanner.Constant;
    val content: java.lang.String;
    val contains: array<bool>;
    val noASCII: bool;
    fun has(arg0: int): bool;
    
    fun has(arg0: int, arg1: java.lang.String): bool;
    
    fun hasNo(arg0: int): bool;
    
    fun hasNo(arg0: int, arg1: java.lang.String): bool;
    
    fun `static-constructor`(): void {
        assigns LINEBR;
        assigns NULL_OR_LINEBR;
        assigns NULL_BL_LINEBR;
        assigns NULL_BL_T_LINEBR;
        assigns NULL_BL_T;
        assigns URI_CHARS;
        assigns ALPHA;
    }
}
automaton `org.yaml.snakeyaml.constructor.Construct` : `org.yaml.snakeyaml.constructor.Construct` {
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
    
    fun construct2ndStep(arg0: org.yaml.snakeyaml.nodes.Node, arg1: java.lang.Object): void;
}
automaton `org.yaml.snakeyaml.constructor.Constructor` (val arg0: org.yaml.snakeyaml.LoaderOptions) : `org.yaml.snakeyaml.constructor.Constructor` {
    fun check(arg0: java.lang.String): java.lang.String;
    
    fun checkRoot(arg0: java.lang.Class): java.lang.Class;
    
    fun getClassForName(arg0: java.lang.String): java.lang.Class;
    
    fun getClassForNode(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Class;
}
automaton `org.yaml.snakeyaml.constructor.Constructor$ConstructMapping` (val arg0: `org.yaml.snakeyaml.constructor.Constructor`) : `org.yaml.snakeyaml.constructor.Constructor$ConstructMapping` {
    val this$0: `org.yaml.snakeyaml.constructor.Constructor`;
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
    
    fun construct2ndStep(arg0: org.yaml.snakeyaml.nodes.Node, arg1: java.lang.Object): void;
    
    fun constructJavaBean2ndStep(arg0: org.yaml.snakeyaml.nodes.MappingNode, arg1: java.lang.Object): java.lang.Object {
        assigns arg0.value;
    }
    
    fun getProperty(arg0: java.lang.Class, arg1: java.lang.String): org.yaml.snakeyaml.introspector.Property;
    
    fun newInstance(arg0: org.yaml.snakeyaml.TypeDescription, arg1: java.lang.String, arg2: org.yaml.snakeyaml.nodes.Node): java.lang.Object {
        assigns arg2.`type`;
        assigns arg2.twoStepsConstruction;
    }
}
automaton `org.yaml.snakeyaml.constructor.Constructor$ConstructScalar` (val arg0: `org.yaml.snakeyaml.constructor.Constructor`) : `org.yaml.snakeyaml.constructor.Constructor$ConstructScalar` {
    val this$0: `org.yaml.snakeyaml.constructor.Constructor`;
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
    
    fun constructStandardJavaInstance(arg0: java.lang.Class, arg1: org.yaml.snakeyaml.nodes.ScalarNode): java.lang.Object {
        assigns arg1;
    }
}
automaton `org.yaml.snakeyaml.constructor.Constructor$ConstructSequence` (val arg0: `org.yaml.snakeyaml.constructor.Constructor`) : `org.yaml.snakeyaml.constructor.Constructor$ConstructSequence` {
    val this$0: `org.yaml.snakeyaml.constructor.Constructor`;
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
    
    fun construct2ndStep(arg0: org.yaml.snakeyaml.nodes.Node, arg1: java.lang.Object): void;
    
    fun wrapIfPrimitive(arg0: java.lang.Class): java.lang.Class;
}
automaton `org.yaml.snakeyaml.constructor.Constructor$ConstructYamlObject` (val arg0: `org.yaml.snakeyaml.constructor.Constructor`) : `org.yaml.snakeyaml.constructor.Constructor$ConstructYamlObject` {
    val this$0: `org.yaml.snakeyaml.constructor.Constructor`;
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object {
        assigns arg0.`type`;
        assigns arg0.twoStepsConstruction;
    }
    
    fun construct2ndStep(arg0: org.yaml.snakeyaml.nodes.Node, arg1: java.lang.Object): void {
        assigns arg0.`type`;
    }
    
    fun getConstructor(arg0: org.yaml.snakeyaml.nodes.Node): `org.yaml.snakeyaml.constructor.Construct` {
        assigns arg0.`type`;
    }
}
automaton `org.yaml.snakeyaml.constructor.ConstructorException` (val arg0: java.lang.String, val arg1: org.yaml.snakeyaml.error.Mark, val arg2: java.lang.String, val arg3: org.yaml.snakeyaml.error.Mark, val arg4: java.lang.Throwable) : `org.yaml.snakeyaml.constructor.ConstructorException` {
    val serialVersionUID: long;
}
automaton `org.yaml.snakeyaml.constructor.CustomClassLoaderConstructor` (val arg0: java.lang.ClassLoader, val arg1: org.yaml.snakeyaml.LoaderOptions) : `org.yaml.snakeyaml.constructor.CustomClassLoaderConstructor` {
    val loader: java.lang.ClassLoader;
    fun getClassForName(arg0: java.lang.String): java.lang.Class;
}
automaton org.yaml.snakeyaml.tokens.DirectiveToken (val arg0: java.lang.String, val arg1: java.util.List, val arg2: org.yaml.snakeyaml.error.Mark, val arg3: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.DirectiveToken {
    val name: java.lang.String;
    val value: java.util.List;
    fun getName(): java.lang.String;
    
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
    
    fun getValue(): java.util.List;
}
automaton org.yaml.snakeyaml.events.DocumentEndEvent (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark, val arg2: bool) : org.yaml.snakeyaml.events.DocumentEndEvent {
    val explicit: bool;
    fun getEventId(): org.yaml.snakeyaml.events.Event$ID;
    
    fun getExplicit(): bool;
}
automaton org.yaml.snakeyaml.tokens.DocumentEndToken (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.DocumentEndToken {
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
}
automaton org.yaml.snakeyaml.events.DocumentStartEvent (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark, val arg2: bool, val arg3: org.yaml.snakeyaml.DumperOptions$Version, val arg4: java.util.Map) : org.yaml.snakeyaml.events.DocumentStartEvent {
    val explicit: bool;
    val `version`: org.yaml.snakeyaml.DumperOptions$Version;
    val tags: java.util.Map;
    fun getEventId(): org.yaml.snakeyaml.events.Event$ID;
    
    fun getExplicit(): bool;
    
    fun getTags(): java.util.Map;
    
    fun getVersion(): org.yaml.snakeyaml.DumperOptions$Version;
}
automaton org.yaml.snakeyaml.tokens.DocumentStartToken (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.DocumentStartToken {
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
}
automaton org.yaml.snakeyaml.DumperOptions : org.yaml.snakeyaml.DumperOptions {
    val defaultStyle: org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    val defaultFlowStyle: org.yaml.snakeyaml.DumperOptions$FlowStyle;
    val canonical: bool;
    val allowUnicode: bool;
    val allowReadOnlyProperties: bool;
    val indent: int;
    val indicatorIndent: int;
    val indentWithIndicator: bool;
    val bestWidth: int;
    val splitLines: bool;
    val lineBreak: org.yaml.snakeyaml.DumperOptions$LineBreak;
    val explicitStart: bool;
    val explicitEnd: bool;
    val timeZone: java.util.TimeZone;
    val maxSimpleKeyLength: int;
    val processComments: bool;
    val nonPrintableStyle: org.yaml.snakeyaml.DumperOptions$NonPrintableStyle;
    val `version`: org.yaml.snakeyaml.DumperOptions$Version;
    val tags: java.util.Map;
    val prettyFlow: bool;
    val anchorGenerator: org.yaml.snakeyaml.serializer.AnchorGenerator;
    fun getAnchorGenerator(): org.yaml.snakeyaml.serializer.AnchorGenerator;
    
    fun getDefaultFlowStyle(): org.yaml.snakeyaml.DumperOptions$FlowStyle;
    
    fun getDefaultScalarStyle(): org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    
    fun getIndent(): int;
    
    fun getIndentWithIndicator(): bool;
    
    fun getIndicatorIndent(): int;
    
    fun getLineBreak(): org.yaml.snakeyaml.DumperOptions$LineBreak;
    
    fun getMaxSimpleKeyLength(): int;
    
    fun getNonPrintableStyle(): org.yaml.snakeyaml.DumperOptions$NonPrintableStyle;
    
    fun getSplitLines(): bool;
    
    fun getTags(): java.util.Map;
    
    fun getTimeZone(): java.util.TimeZone;
    
    fun getVersion(): org.yaml.snakeyaml.DumperOptions$Version;
    
    fun getWidth(): int;
    
    fun isAllowReadOnlyProperties(): bool;
    
    fun isAllowUnicode(): bool;
    
    fun isCanonical(): bool;
    
    fun isExplicitEnd(): bool;
    
    fun isExplicitStart(): bool;
    
    fun isPrettyFlow(): bool;
    
    fun isProcessComments(): bool;
    
    fun setAllowReadOnlyProperties(arg0: bool): void {
        assigns allowReadOnlyProperties;
    }
    
    fun setAllowUnicode(arg0: bool): void {
        assigns allowUnicode;
    }
    
    fun setAnchorGenerator(arg0: org.yaml.snakeyaml.serializer.AnchorGenerator): void {
        assigns anchorGenerator;
    }
    
    fun setCanonical(arg0: bool): void {
        assigns canonical;
    }
    
    fun setDefaultFlowStyle(arg0: org.yaml.snakeyaml.DumperOptions$FlowStyle): void {
        assigns defaultFlowStyle;
    }
    
    fun setDefaultScalarStyle(arg0: org.yaml.snakeyaml.DumperOptions$ScalarStyle): void {
        assigns defaultStyle;
    }
    
    fun setExplicitEnd(arg0: bool): void {
        assigns explicitEnd;
    }
    
    fun setExplicitStart(arg0: bool): void {
        assigns explicitStart;
    }
    
    fun setIndent(arg0: int): void {
        assigns indent;
    }
    
    fun setIndentWithIndicator(arg0: bool): void {
        assigns indentWithIndicator;
    }
    
    fun setIndicatorIndent(arg0: int): void {
        assigns indicatorIndent;
    }
    
    fun setLineBreak(arg0: org.yaml.snakeyaml.DumperOptions$LineBreak): void {
        assigns lineBreak;
    }
    
    fun setMaxSimpleKeyLength(arg0: int): void {
        assigns maxSimpleKeyLength;
    }
    
    fun setNonPrintableStyle(arg0: org.yaml.snakeyaml.DumperOptions$NonPrintableStyle): void {
        assigns nonPrintableStyle;
    }
    
    fun setPrettyFlow(arg0: bool): void {
        assigns prettyFlow;
    }
    
    fun setProcessComments(arg0: bool): void {
        assigns processComments;
    }
    
    fun setSplitLines(arg0: bool): void {
        assigns splitLines;
    }
    
    fun setTags(arg0: java.util.Map): void {
        assigns tags;
    }
    
    fun setTimeZone(arg0: java.util.TimeZone): void {
        assigns timeZone;
    }
    
    fun setVersion(arg0: org.yaml.snakeyaml.DumperOptions$Version): void {
        assigns `version`;
    }
    
    fun setWidth(arg0: int): void {
        assigns bestWidth;
    }
}
automaton org.yaml.snakeyaml.DumperOptions$FlowStyle (val arg0: java.lang.String, val arg1: int, val arg2: bool) : org.yaml.snakeyaml.DumperOptions$FlowStyle {
    val FLOW: org.yaml.snakeyaml.DumperOptions$FlowStyle;
    val BLOCK: org.yaml.snakeyaml.DumperOptions$FlowStyle;
    val AUTO: org.yaml.snakeyaml.DumperOptions$FlowStyle;
    val styleBoolean: bool;
    val $VALUES: array<org.yaml.snakeyaml.DumperOptions$FlowStyle>;
    fun `static-constructor`(): void {
        assigns FLOW;
        assigns BLOCK;
        assigns AUTO;
        assigns $VALUES;
    }
    
    fun toString(): java.lang.String;
    
    fun valueOf(arg0: java.lang.String): org.yaml.snakeyaml.DumperOptions$FlowStyle;
    
    fun values(): array<org.yaml.snakeyaml.DumperOptions$FlowStyle>;
}
automaton org.yaml.snakeyaml.DumperOptions$LineBreak (val arg0: java.lang.String, val arg1: int, val arg2: java.lang.String) : org.yaml.snakeyaml.DumperOptions$LineBreak {
    val WIN: org.yaml.snakeyaml.DumperOptions$LineBreak;
    val MAC: org.yaml.snakeyaml.DumperOptions$LineBreak;
    val UNIX: org.yaml.snakeyaml.DumperOptions$LineBreak;
    val lineBreak: java.lang.String;
    val $VALUES: array<org.yaml.snakeyaml.DumperOptions$LineBreak>;
    fun getPlatformLineBreak(): org.yaml.snakeyaml.DumperOptions$LineBreak;
    
    fun getString(): java.lang.String;
    
    fun `static-constructor`(): void {
        assigns WIN;
        assigns MAC;
        assigns UNIX;
        assigns $VALUES;
    }
    
    fun toString(): java.lang.String;
    
    fun valueOf(arg0: java.lang.String): org.yaml.snakeyaml.DumperOptions$LineBreak;
    
    fun values(): array<org.yaml.snakeyaml.DumperOptions$LineBreak>;
}
automaton org.yaml.snakeyaml.DumperOptions$NonPrintableStyle (val arg0: java.lang.String, val arg1: int) : org.yaml.snakeyaml.DumperOptions$NonPrintableStyle {
    val BINARY: org.yaml.snakeyaml.DumperOptions$NonPrintableStyle;
    val ESCAPE: org.yaml.snakeyaml.DumperOptions$NonPrintableStyle;
    val $VALUES: array<org.yaml.snakeyaml.DumperOptions$NonPrintableStyle>;
    fun `static-constructor`(): void {
        assigns BINARY;
        assigns ESCAPE;
        assigns $VALUES;
    }
    
    fun valueOf(arg0: java.lang.String): org.yaml.snakeyaml.DumperOptions$NonPrintableStyle;
    
    fun values(): array<org.yaml.snakeyaml.DumperOptions$NonPrintableStyle>;
}
automaton org.yaml.snakeyaml.DumperOptions$ScalarStyle (val arg0: java.lang.String, val arg1: int, val arg2: char) : org.yaml.snakeyaml.DumperOptions$ScalarStyle {
    val DOUBLE_QUOTED: org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    val SINGLE_QUOTED: org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    val LITERAL: org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    val FOLDED: org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    val PLAIN: org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    val styleChar: char;
    val $VALUES: array<org.yaml.snakeyaml.DumperOptions$ScalarStyle>;
    fun createStyle(arg0: char): org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    
    fun getChar(): char;
    
    fun `static-constructor`(): void {
        assigns DOUBLE_QUOTED;
        assigns SINGLE_QUOTED;
        assigns LITERAL;
        assigns FOLDED;
        assigns PLAIN;
        assigns $VALUES;
    }
    
    fun toString(): java.lang.String;
    
    fun valueOf(arg0: java.lang.String): org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    
    fun values(): array<org.yaml.snakeyaml.DumperOptions$ScalarStyle>;
}
automaton org.yaml.snakeyaml.DumperOptions$Version (val arg0: java.lang.String, val arg1: int, val arg2: array<int>) : org.yaml.snakeyaml.DumperOptions$Version {
    val V1_0: org.yaml.snakeyaml.DumperOptions$Version;
    val V1_1: org.yaml.snakeyaml.DumperOptions$Version;
    val `version`: array<int>;
    val $VALUES: array<org.yaml.snakeyaml.DumperOptions$Version>;
    fun getRepresentation(): java.lang.String;
    
    fun major(): int;
    
    fun minor(): int;
    
    fun `static-constructor`(): void {
        assigns V1_0;
        assigns V1_1;
        assigns $VALUES;
    }
    
    fun toString(): java.lang.String;
    
    fun valueOf(arg0: java.lang.String): org.yaml.snakeyaml.DumperOptions$Version;
    
    fun values(): array<org.yaml.snakeyaml.DumperOptions$Version>;
}
automaton `org.yaml.snakeyaml.constructor.DuplicateKeyException` (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: java.lang.Object, val arg2: org.yaml.snakeyaml.error.Mark) : `org.yaml.snakeyaml.constructor.DuplicateKeyException` {
}
automaton org.yaml.snakeyaml.emitter.Emitable : org.yaml.snakeyaml.emitter.Emitable {
    fun emit(arg0: org.yaml.snakeyaml.events.Event): void;
}
automaton org.yaml.snakeyaml.emitter.Emitter (val arg0: java.io.Writer, val arg1: org.yaml.snakeyaml.DumperOptions) : org.yaml.snakeyaml.emitter.Emitter {
    val MIN_INDENT: int;
    val MAX_INDENT: int;
    val SPACE: array<char>;
    val SPACES_PATTERN: java.util.regex.Pattern;
    val INVALID_ANCHOR: java.util.Set;
    val ESCAPE_REPLACEMENTS: java.util.Map;
    val DEFAULT_TAG_PREFIXES: java.util.Map;
    val stream: java.io.Writer;
    val states: org.yaml.snakeyaml.util.ArrayStack;
    val `state`: org.yaml.snakeyaml.emitter.EmitterState;
    val events: java.util.Queue;
    val event: org.yaml.snakeyaml.events.Event;
    val indents: org.yaml.snakeyaml.util.ArrayStack;
    val indent: int;
    val flowLevel: int;
    val rootContext: bool;
    val mappingContext: bool;
    val simpleKeyContext: bool;
    val column: int;
    val whitespace: bool;
    val indention: bool;
    val openEnded: bool;
    val canonical: bool;
    val prettyFlow: bool;
    val allowUnicode: bool;
    val bestIndent: int;
    val indicatorIndent: int;
    val indentWithIndicator: bool;
    val bestWidth: int;
    val bestLineBreak: array<char>;
    val splitLines: bool;
    val maxSimpleKeyLength: int;
    val emitComments: bool;
    val tagPrefixes: java.util.Map;
    val preparedAnchor: java.lang.String;
    val preparedTag: java.lang.String;
    val analysis: org.yaml.snakeyaml.emitter.ScalarAnalysis;
    val style: org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    val blockCommentsCollector: org.yaml.snakeyaml.comments.CommentEventsCollector;
    val inlineCommentsCollector: org.yaml.snakeyaml.comments.CommentEventsCollector;
    val HANDLE_FORMAT: java.util.regex.Pattern;
    val LEADING_ZERO_PATTERN: java.util.regex.Pattern;
    fun access$100(arg0: org.yaml.snakeyaml.emitter.Emitter): org.yaml.snakeyaml.events.Event;
    
    fun access$1000(arg0: org.yaml.snakeyaml.emitter.Emitter): bool;
    
    fun access$102(arg0: org.yaml.snakeyaml.emitter.Emitter, arg1: org.yaml.snakeyaml.events.Event): org.yaml.snakeyaml.events.Event {
        assigns arg0.event;
    }
    
    fun access$1100(arg0: org.yaml.snakeyaml.emitter.Emitter): bool;
    
    fun access$1400(arg0: org.yaml.snakeyaml.emitter.Emitter): org.yaml.snakeyaml.comments.CommentEventsCollector;
    
    fun access$1500(arg0: org.yaml.snakeyaml.emitter.Emitter): void {
        assigns arg0.whitespace;
        assigns arg0.indention;
        assigns arg0.column;
        assigns arg0.openEnded;
    }
    
    fun access$1700(arg0: org.yaml.snakeyaml.emitter.Emitter): org.yaml.snakeyaml.util.ArrayStack;
    
    fun access$1800(arg0: org.yaml.snakeyaml.emitter.Emitter, arg1: bool, arg2: bool, arg3: bool): void {
        assigns arg0.rootContext;
        assigns arg0.mappingContext;
        assigns arg0.simpleKeyContext;
        assigns arg0.`state`;
        assigns arg0.preparedAnchor;
        assigns arg0.column;
        assigns arg0.whitespace;
        assigns arg0.indention;
        assigns arg0.openEnded;
        assigns arg0.style;
        assigns arg0.preparedTag;
        assigns arg0.analysis;
        assigns arg0.indent;
        assigns arg0.flowLevel;
    }
    
    fun access$2000(arg0: org.yaml.snakeyaml.emitter.Emitter): int;
    
    fun access$2002(arg0: org.yaml.snakeyaml.emitter.Emitter, arg1: int): int {
        assigns arg0.indent;
    }
    
    fun access$202(arg0: org.yaml.snakeyaml.emitter.Emitter, arg1: org.yaml.snakeyaml.emitter.EmitterState): org.yaml.snakeyaml.emitter.EmitterState {
        assigns arg0.`state`;
    }
    
    fun access$2100(arg0: org.yaml.snakeyaml.emitter.Emitter): org.yaml.snakeyaml.util.ArrayStack;
    
    fun access$2210(arg0: org.yaml.snakeyaml.emitter.Emitter): int {
        assigns arg0.flowLevel;
    }
    
    fun access$2300(arg0: org.yaml.snakeyaml.emitter.Emitter): org.yaml.snakeyaml.comments.CommentEventsCollector;
    
    fun access$2400(arg0: org.yaml.snakeyaml.emitter.Emitter): bool {
        assigns arg0.column;
        assigns arg0.whitespace;
        assigns arg0.indention;
        assigns arg0.openEnded;
    }
    
    fun access$2500(arg0: org.yaml.snakeyaml.emitter.Emitter): int;
    
    fun access$2600(arg0: org.yaml.snakeyaml.emitter.Emitter): int;
    
    fun access$2700(arg0: org.yaml.snakeyaml.emitter.Emitter): bool;
    
    fun access$2800(arg0: org.yaml.snakeyaml.emitter.Emitter): bool;
    
    fun access$3100(arg0: org.yaml.snakeyaml.emitter.Emitter): bool {
        assigns arg0.preparedAnchor;
        assigns arg0.preparedTag;
        assigns arg0.analysis;
    }
    
    fun access$3600(arg0: org.yaml.snakeyaml.emitter.Emitter): bool;
    
    fun access$3700(arg0: org.yaml.snakeyaml.emitter.Emitter): int;
    
    fun access$3800(arg0: org.yaml.snakeyaml.emitter.Emitter, arg1: int): void {
        assigns arg0.whitespace;
        assigns arg0.column;
    }
    
    fun access$3900(arg0: org.yaml.snakeyaml.emitter.Emitter, arg1: bool, arg2: bool): void {
        assigns arg0.indent;
    }
    
    fun access$400(arg0: org.yaml.snakeyaml.emitter.Emitter): bool;
    
    fun access$4000(arg0: org.yaml.snakeyaml.emitter.Emitter): org.yaml.snakeyaml.emitter.ScalarAnalysis;
    
    fun access$4002(arg0: org.yaml.snakeyaml.emitter.Emitter, arg1: org.yaml.snakeyaml.emitter.ScalarAnalysis): org.yaml.snakeyaml.emitter.ScalarAnalysis {
        assigns arg0.analysis;
    }
    
    fun access$4100(arg0: org.yaml.snakeyaml.emitter.Emitter, arg1: java.lang.String): org.yaml.snakeyaml.emitter.ScalarAnalysis;
    
    fun access$4500(arg0: org.yaml.snakeyaml.emitter.Emitter, arg1: org.yaml.snakeyaml.events.Event): bool;
    
    fun access$500(arg0: org.yaml.snakeyaml.emitter.Emitter, arg1: org.yaml.snakeyaml.DumperOptions$Version): java.lang.String;
    
    fun access$600(arg0: org.yaml.snakeyaml.emitter.Emitter): java.util.Map;
    
    fun access$602(arg0: org.yaml.snakeyaml.emitter.Emitter, arg1: java.util.Map): java.util.Map {
        assigns arg0.tagPrefixes;
    }
    
    fun access$700(): java.util.Map;
    
    fun access$800(arg0: org.yaml.snakeyaml.emitter.Emitter, arg1: java.lang.String): java.lang.String;
    
    fun access$900(arg0: org.yaml.snakeyaml.emitter.Emitter, arg1: java.lang.String): java.lang.String;
    
    fun analyzeScalar(arg0: java.lang.String): org.yaml.snakeyaml.emitter.ScalarAnalysis;
    
    fun checkEmptyDocument(): bool;
    
    fun checkEmptyMapping(): bool;
    
    fun checkEmptySequence(): bool;
    
    fun checkSimpleKey(): bool {
        assigns preparedAnchor;
        assigns preparedTag;
        assigns analysis;
    }
    
    fun chooseScalarStyle(): org.yaml.snakeyaml.DumperOptions$ScalarStyle {
        assigns analysis;
    }
    
    fun determineBlockHints(arg0: java.lang.String): java.lang.String;
    
    fun emit(arg0: org.yaml.snakeyaml.events.Event): void {
        assigns event;
    }
    
    fun expectAlias(): void {
        assigns `state`;
        assigns preparedAnchor;
        assigns column;
        assigns whitespace;
        assigns indention;
        assigns openEnded;
    }
    
    fun expectBlockMapping(): void {
        assigns `state`;
        assigns indent;
    }
    
    fun expectBlockSequence(): void {
        assigns `state`;
        assigns indent;
    }
    
    fun expectFlowMapping(): void {
        assigns flowLevel;
        assigns `state`;
        assigns column;
        assigns whitespace;
        assigns indention;
        assigns openEnded;
        assigns indent;
    }
    
    fun expectFlowSequence(): void {
        assigns flowLevel;
        assigns `state`;
        assigns column;
        assigns whitespace;
        assigns indention;
        assigns openEnded;
        assigns indent;
    }
    
    fun expectNode(arg0: bool, arg1: bool, arg2: bool): void {
        assigns rootContext;
        assigns mappingContext;
        assigns simpleKeyContext;
        assigns `state`;
        assigns preparedAnchor;
        assigns column;
        assigns whitespace;
        assigns indention;
        assigns openEnded;
        assigns style;
        assigns preparedTag;
        assigns analysis;
        assigns indent;
        assigns flowLevel;
    }
    
    fun expectScalar(): void {
        assigns indent;
        assigns `state`;
        assigns analysis;
        assigns style;
        assigns openEnded;
        assigns column;
        assigns whitespace;
        assigns indention;
    }
    
    fun flushStream(): void;
    
    fun increaseIndent(arg0: bool, arg1: bool): void {
        assigns indent;
    }
    
    fun isFoldedOrLiteral(arg0: org.yaml.snakeyaml.events.Event): bool;
    
    fun needEvents(arg0: java.util.Iterator, arg1: int): bool;
    
    fun needMoreEvents(): bool;
    
    fun prepareAnchor(arg0: java.lang.String): java.lang.String;
    
    fun prepareTag(arg0: java.lang.String): java.lang.String;
    
    fun prepareTagHandle(arg0: java.lang.String): java.lang.String;
    
    fun prepareTagPrefix(arg0: java.lang.String): java.lang.String;
    
    fun prepareVersion(arg0: org.yaml.snakeyaml.DumperOptions$Version): java.lang.String;
    
    fun processAnchor(arg0: java.lang.String): void {
        assigns preparedAnchor;
        assigns column;
        assigns whitespace;
        assigns indention;
        assigns openEnded;
    }
    
    fun processScalar(): void {
        assigns analysis;
        assigns style;
        assigns openEnded;
        assigns column;
        assigns whitespace;
        assigns indention;
    }
    
    fun processTag(): void {
        assigns style;
        assigns preparedTag;
        assigns analysis;
        assigns column;
        assigns whitespace;
        assigns indention;
        assigns openEnded;
    }
    
    fun `static-constructor`(): void {
        assigns SPACE;
        assigns SPACES_PATTERN;
        assigns INVALID_ANCHOR;
        assigns ESCAPE_REPLACEMENTS;
        assigns DEFAULT_TAG_PREFIXES;
        assigns HANDLE_FORMAT;
        assigns LEADING_ZERO_PATTERN;
    }
    
    fun writeBlockComment(): void {
        assigns whitespace;
        assigns indention;
        assigns column;
        assigns openEnded;
    }
    
    fun writeCommentLines(arg0: java.util.List): bool {
        assigns column;
        assigns whitespace;
        assigns indention;
        assigns openEnded;
    }
    
    fun writeDoubleQuoted(arg0: java.lang.String, arg1: bool): void {
        assigns column;
        assigns whitespace;
        assigns indention;
        assigns openEnded;
    }
    
    fun writeFolded(arg0: java.lang.String, arg1: bool): void {
        assigns openEnded;
        assigns column;
        assigns whitespace;
        assigns indention;
    }
    
    fun writeIndent(): void {
        assigns whitespace;
        assigns indention;
        assigns column;
    }
    
    fun writeIndicator(arg0: java.lang.String, arg1: bool, arg2: bool, arg3: bool): void {
        assigns column;
        assigns whitespace;
        assigns indention;
        assigns openEnded;
    }
    
    fun writeInlineComments(): bool {
        assigns column;
        assigns whitespace;
        assigns indention;
        assigns openEnded;
    }
    
    fun writeLineBreak(arg0: java.lang.String): void {
        assigns whitespace;
        assigns indention;
        assigns column;
    }
    
    fun writeLiteral(arg0: java.lang.String): void {
        assigns openEnded;
        assigns column;
        assigns whitespace;
        assigns indention;
    }
    
    fun writePlain(arg0: java.lang.String, arg1: bool): void {
        assigns openEnded;
        assigns column;
        assigns whitespace;
        assigns indention;
    }
    
    fun writeSingleQuoted(arg0: java.lang.String, arg1: bool): void {
        assigns column;
        assigns whitespace;
        assigns indention;
        assigns openEnded;
    }
    
    fun writeStreamEnd(): void;
    
    fun writeStreamStart(): void;
    
    fun writeTagDirective(arg0: java.lang.String, arg1: java.lang.String): void {
        assigns whitespace;
        assigns indention;
        assigns column;
    }
    
    fun writeVersionDirective(arg0: java.lang.String): void {
        assigns whitespace;
        assigns indention;
        assigns column;
    }
    
    fun writeWhitespace(arg0: int): void {
        assigns whitespace;
        assigns column;
    }
}
automaton org.yaml.snakeyaml.emitter.Emitter$1 : org.yaml.snakeyaml.emitter.Emitter$1 {
    val $SwitchMap$org$yaml$snakeyaml$DumperOptions$ScalarStyle: array<int>;
    fun `static-constructor`(): void {
        assigns $SwitchMap$org$yaml$snakeyaml$DumperOptions$ScalarStyle;
    }
}
automaton org.yaml.snakeyaml.emitter.Emitter$ExpectBlockMappingKey (val arg0: org.yaml.snakeyaml.emitter.Emitter, val arg1: bool) : org.yaml.snakeyaml.emitter.Emitter$ExpectBlockMappingKey {
    val first: bool;
    val this$0: org.yaml.snakeyaml.emitter.Emitter;
    fun expect(): void {
        assigns this$0.event;
        assigns this$0.whitespace;
        assigns this$0.indention;
        assigns this$0.column;
        assigns this$0.openEnded;
        assigns this$0.indent;
        assigns this$0.`state`;
        assigns this$0.preparedAnchor;
        assigns this$0.preparedTag;
        assigns this$0.analysis;
        assigns this$0.rootContext;
        assigns this$0.mappingContext;
        assigns this$0.simpleKeyContext;
        assigns this$0.style;
        assigns this$0.flowLevel;
    }
}
automaton org.yaml.snakeyaml.emitter.Emitter$ExpectBlockMappingSimpleValue (val arg0: org.yaml.snakeyaml.emitter.Emitter) : org.yaml.snakeyaml.emitter.Emitter$ExpectBlockMappingSimpleValue {
    val this$0: org.yaml.snakeyaml.emitter.Emitter;
    fun expect(): void {
        assigns this$0.event;
        assigns this$0.column;
        assigns this$0.whitespace;
        assigns this$0.indention;
        assigns this$0.openEnded;
        assigns this$0.indent;
        assigns this$0.rootContext;
        assigns this$0.mappingContext;
        assigns this$0.simpleKeyContext;
        assigns this$0.`state`;
        assigns this$0.preparedAnchor;
        assigns this$0.style;
        assigns this$0.preparedTag;
        assigns this$0.analysis;
        assigns this$0.flowLevel;
    }
}
automaton org.yaml.snakeyaml.emitter.Emitter$ExpectBlockMappingValue (val arg0: org.yaml.snakeyaml.emitter.Emitter) : org.yaml.snakeyaml.emitter.Emitter$ExpectBlockMappingValue {
    val this$0: org.yaml.snakeyaml.emitter.Emitter;
    fun expect(): void {
        assigns this$0.event;
        assigns this$0.column;
        assigns this$0.whitespace;
        assigns this$0.indention;
        assigns this$0.openEnded;
        assigns this$0.rootContext;
        assigns this$0.mappingContext;
        assigns this$0.simpleKeyContext;
        assigns this$0.`state`;
        assigns this$0.preparedAnchor;
        assigns this$0.style;
        assigns this$0.preparedTag;
        assigns this$0.analysis;
        assigns this$0.indent;
        assigns this$0.flowLevel;
    }
}
automaton org.yaml.snakeyaml.emitter.Emitter$ExpectBlockSequenceItem (val arg0: org.yaml.snakeyaml.emitter.Emitter, val arg1: bool) : org.yaml.snakeyaml.emitter.Emitter$ExpectBlockSequenceItem {
    val first: bool;
    val this$0: org.yaml.snakeyaml.emitter.Emitter;
    fun expect(): void {
        assigns this$0.indent;
        assigns this$0.`state`;
        assigns this$0.whitespace;
        assigns this$0.column;
        assigns this$0.indention;
        assigns this$0.openEnded;
        assigns this$0.analysis;
        assigns this$0.rootContext;
        assigns this$0.mappingContext;
        assigns this$0.simpleKeyContext;
        assigns this$0.preparedAnchor;
        assigns this$0.style;
        assigns this$0.preparedTag;
        assigns this$0.flowLevel;
    }
}
automaton org.yaml.snakeyaml.emitter.Emitter$ExpectDocumentEnd (val arg0: org.yaml.snakeyaml.emitter.Emitter) : org.yaml.snakeyaml.emitter.Emitter$ExpectDocumentEnd {
    val this$0: org.yaml.snakeyaml.emitter.Emitter;
    fun expect(): void {
        assigns this$0.event;
        assigns this$0.whitespace;
        assigns this$0.indention;
        assigns this$0.column;
        assigns this$0.openEnded;
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.emitter.Emitter$ExpectDocumentRoot (val arg0: org.yaml.snakeyaml.emitter.Emitter) : org.yaml.snakeyaml.emitter.Emitter$ExpectDocumentRoot {
    val this$0: org.yaml.snakeyaml.emitter.Emitter;
    fun expect(): void {
        assigns this$0.event;
        assigns this$0.whitespace;
        assigns this$0.indention;
        assigns this$0.column;
        assigns this$0.openEnded;
        assigns this$0.rootContext;
        assigns this$0.mappingContext;
        assigns this$0.simpleKeyContext;
        assigns this$0.`state`;
        assigns this$0.preparedAnchor;
        assigns this$0.style;
        assigns this$0.preparedTag;
        assigns this$0.analysis;
        assigns this$0.indent;
        assigns this$0.flowLevel;
    }
}
automaton org.yaml.snakeyaml.emitter.Emitter$ExpectDocumentStart (val arg0: org.yaml.snakeyaml.emitter.Emitter, val arg1: bool) : org.yaml.snakeyaml.emitter.Emitter$ExpectDocumentStart {
    val first: bool;
    val this$0: org.yaml.snakeyaml.emitter.Emitter;
    fun expect(): void {
        assigns this$0.tagPrefixes;
        assigns this$0.`state`;
        assigns this$0.whitespace;
        assigns this$0.indention;
        assigns this$0.column;
        assigns this$0.openEnded;
    }
}
automaton org.yaml.snakeyaml.emitter.Emitter$ExpectFirstBlockMappingKey (val arg0: org.yaml.snakeyaml.emitter.Emitter) : org.yaml.snakeyaml.emitter.Emitter$ExpectFirstBlockMappingKey {
    val this$0: org.yaml.snakeyaml.emitter.Emitter;
    fun expect(): void;
}
automaton org.yaml.snakeyaml.emitter.Emitter$ExpectFirstBlockSequenceItem (val arg0: org.yaml.snakeyaml.emitter.Emitter) : org.yaml.snakeyaml.emitter.Emitter$ExpectFirstBlockSequenceItem {
    val this$0: org.yaml.snakeyaml.emitter.Emitter;
    fun expect(): void;
}
automaton org.yaml.snakeyaml.emitter.Emitter$ExpectFirstDocumentStart (val arg0: org.yaml.snakeyaml.emitter.Emitter) : org.yaml.snakeyaml.emitter.Emitter$ExpectFirstDocumentStart {
    val this$0: org.yaml.snakeyaml.emitter.Emitter;
    fun expect(): void;
}
automaton org.yaml.snakeyaml.emitter.Emitter$ExpectFirstFlowMappingKey (val arg0: org.yaml.snakeyaml.emitter.Emitter) : org.yaml.snakeyaml.emitter.Emitter$ExpectFirstFlowMappingKey {
    val this$0: org.yaml.snakeyaml.emitter.Emitter;
    fun expect(): void {
        assigns this$0.event;
        assigns this$0.whitespace;
        assigns this$0.indention;
        assigns this$0.column;
        assigns this$0.openEnded;
        assigns this$0.indent;
        assigns this$0.flowLevel;
        assigns this$0.`state`;
        assigns this$0.preparedAnchor;
        assigns this$0.preparedTag;
        assigns this$0.analysis;
        assigns this$0.rootContext;
        assigns this$0.mappingContext;
        assigns this$0.simpleKeyContext;
        assigns this$0.style;
    }
}
automaton org.yaml.snakeyaml.emitter.Emitter$ExpectFirstFlowSequenceItem (val arg0: org.yaml.snakeyaml.emitter.Emitter) : org.yaml.snakeyaml.emitter.Emitter$ExpectFirstFlowSequenceItem {
    val this$0: org.yaml.snakeyaml.emitter.Emitter;
    fun expect(): void {
        assigns this$0.indent;
        assigns this$0.flowLevel;
        assigns this$0.column;
        assigns this$0.whitespace;
        assigns this$0.indention;
        assigns this$0.openEnded;
        assigns this$0.`state`;
        assigns this$0.rootContext;
        assigns this$0.mappingContext;
        assigns this$0.simpleKeyContext;
        assigns this$0.preparedAnchor;
        assigns this$0.style;
        assigns this$0.preparedTag;
        assigns this$0.analysis;
        assigns this$0.event;
    }
}
automaton org.yaml.snakeyaml.emitter.Emitter$ExpectFlowMappingKey (val arg0: org.yaml.snakeyaml.emitter.Emitter) : org.yaml.snakeyaml.emitter.Emitter$ExpectFlowMappingKey {
    val this$0: org.yaml.snakeyaml.emitter.Emitter;
    fun expect(): void {
        assigns this$0.indent;
        assigns this$0.flowLevel;
        assigns this$0.column;
        assigns this$0.whitespace;
        assigns this$0.indention;
        assigns this$0.openEnded;
        assigns this$0.`state`;
        assigns this$0.event;
        assigns this$0.preparedAnchor;
        assigns this$0.preparedTag;
        assigns this$0.analysis;
        assigns this$0.rootContext;
        assigns this$0.mappingContext;
        assigns this$0.simpleKeyContext;
        assigns this$0.style;
    }
}
automaton org.yaml.snakeyaml.emitter.Emitter$ExpectFlowMappingSimpleValue (val arg0: org.yaml.snakeyaml.emitter.Emitter) : org.yaml.snakeyaml.emitter.Emitter$ExpectFlowMappingSimpleValue {
    val this$0: org.yaml.snakeyaml.emitter.Emitter;
    fun expect(): void {
        assigns this$0.event;
        assigns this$0.column;
        assigns this$0.whitespace;
        assigns this$0.indention;
        assigns this$0.openEnded;
        assigns this$0.rootContext;
        assigns this$0.mappingContext;
        assigns this$0.simpleKeyContext;
        assigns this$0.`state`;
        assigns this$0.preparedAnchor;
        assigns this$0.style;
        assigns this$0.preparedTag;
        assigns this$0.analysis;
        assigns this$0.indent;
        assigns this$0.flowLevel;
    }
}
automaton org.yaml.snakeyaml.emitter.Emitter$ExpectFlowMappingValue (val arg0: org.yaml.snakeyaml.emitter.Emitter) : org.yaml.snakeyaml.emitter.Emitter$ExpectFlowMappingValue {
    val this$0: org.yaml.snakeyaml.emitter.Emitter;
    fun expect(): void {
        assigns this$0.event;
        assigns this$0.column;
        assigns this$0.whitespace;
        assigns this$0.indention;
        assigns this$0.openEnded;
        assigns this$0.rootContext;
        assigns this$0.mappingContext;
        assigns this$0.simpleKeyContext;
        assigns this$0.`state`;
        assigns this$0.preparedAnchor;
        assigns this$0.style;
        assigns this$0.preparedTag;
        assigns this$0.analysis;
        assigns this$0.indent;
        assigns this$0.flowLevel;
    }
}
automaton org.yaml.snakeyaml.emitter.Emitter$ExpectFlowSequenceItem (val arg0: org.yaml.snakeyaml.emitter.Emitter) : org.yaml.snakeyaml.emitter.Emitter$ExpectFlowSequenceItem {
    val this$0: org.yaml.snakeyaml.emitter.Emitter;
    fun expect(): void {
        assigns this$0.indent;
        assigns this$0.flowLevel;
        assigns this$0.column;
        assigns this$0.whitespace;
        assigns this$0.indention;
        assigns this$0.openEnded;
        assigns this$0.`state`;
        assigns this$0.event;
        assigns this$0.rootContext;
        assigns this$0.mappingContext;
        assigns this$0.simpleKeyContext;
        assigns this$0.preparedAnchor;
        assigns this$0.style;
        assigns this$0.preparedTag;
        assigns this$0.analysis;
    }
}
automaton org.yaml.snakeyaml.emitter.Emitter$ExpectNothing (val arg0: org.yaml.snakeyaml.emitter.Emitter) : org.yaml.snakeyaml.emitter.Emitter$ExpectNothing {
    val this$0: org.yaml.snakeyaml.emitter.Emitter;
    fun expect(): void;
}
automaton org.yaml.snakeyaml.emitter.Emitter$ExpectStreamStart (val arg0: org.yaml.snakeyaml.emitter.Emitter) : org.yaml.snakeyaml.emitter.Emitter$ExpectStreamStart {
    val this$0: org.yaml.snakeyaml.emitter.Emitter;
    fun expect(): void {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.emitter.EmitterException (val arg0: java.lang.String) : org.yaml.snakeyaml.emitter.EmitterException {
    val serialVersionUID: long;
}
automaton org.yaml.snakeyaml.emitter.EmitterState : org.yaml.snakeyaml.emitter.EmitterState {
    fun expect(): void;
}
automaton org.yaml.snakeyaml.util.EnumUtils : org.yaml.snakeyaml.util.EnumUtils {
    fun findEnumInsensitiveCase(arg0: java.lang.Class, arg1: java.lang.String): java.lang.Enum;
}
automaton org.yaml.snakeyaml.env.EnvScalarConstructor : org.yaml.snakeyaml.env.EnvScalarConstructor {
    val ENV_TAG: org.yaml.snakeyaml.nodes.Tag;
    val ENV_FORMAT: java.util.regex.Pattern;
    fun access$100(arg0: org.yaml.snakeyaml.env.EnvScalarConstructor, arg1: org.yaml.snakeyaml.nodes.ScalarNode): java.lang.String;
    
    fun apply(arg0: java.lang.String, arg1: java.lang.String, arg2: java.lang.String, arg3: java.lang.String): java.lang.String;
    
    fun getEnv(arg0: java.lang.String): java.lang.String;
    
    fun `static-constructor`(): void {
        assigns ENV_TAG;
        assigns ENV_FORMAT;
    }
}
automaton org.yaml.snakeyaml.env.EnvScalarConstructor$1 : org.yaml.snakeyaml.env.EnvScalarConstructor$1 {
}
automaton org.yaml.snakeyaml.env.EnvScalarConstructor$ConstructEnv (val arg0: org.yaml.snakeyaml.env.EnvScalarConstructor) : org.yaml.snakeyaml.env.EnvScalarConstructor$ConstructEnv {
    val this$0: org.yaml.snakeyaml.env.EnvScalarConstructor;
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
}
automaton org.yaml.snakeyaml.external.com.google.gdata.util.common.base.Escaper : org.yaml.snakeyaml.external.com.google.gdata.util.common.base.Escaper {
    fun escape(arg0: java.lang.String): java.lang.String;
    
    fun escape(arg0: java.lang.Appendable): java.lang.Appendable;
}
automaton org.yaml.snakeyaml.events.Event (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.events.Event {
    val startMark: org.yaml.snakeyaml.error.Mark;
    val endMark: org.yaml.snakeyaml.error.Mark;
    fun equals(arg0: java.lang.Object): bool;
    
    fun getArguments(): java.lang.String;
    
    fun getEndMark(): org.yaml.snakeyaml.error.Mark;
    
    fun getEventId(): org.yaml.snakeyaml.events.Event$ID;
    
    fun getStartMark(): org.yaml.snakeyaml.error.Mark;
    
    fun hashCode(): int;
    
    fun is(arg0: org.yaml.snakeyaml.events.Event$ID): bool;
    
    fun toString(): java.lang.String;
}
automaton org.yaml.snakeyaml.events.Event$ID (val arg0: java.lang.String, val arg1: int) : org.yaml.snakeyaml.events.Event$ID {
    val Alias: org.yaml.snakeyaml.events.Event$ID;
    val Comment: org.yaml.snakeyaml.events.Event$ID;
    val DocumentEnd: org.yaml.snakeyaml.events.Event$ID;
    val DocumentStart: org.yaml.snakeyaml.events.Event$ID;
    val MappingEnd: org.yaml.snakeyaml.events.Event$ID;
    val MappingStart: org.yaml.snakeyaml.events.Event$ID;
    val Scalar: org.yaml.snakeyaml.events.Event$ID;
    val SequenceEnd: org.yaml.snakeyaml.events.Event$ID;
    val SequenceStart: org.yaml.snakeyaml.events.Event$ID;
    val StreamEnd: org.yaml.snakeyaml.events.Event$ID;
    val StreamStart: org.yaml.snakeyaml.events.Event$ID;
    val $VALUES: array<org.yaml.snakeyaml.events.Event$ID>;
    fun `static-constructor`(): void {
        assigns Alias;
        assigns Comment;
        assigns DocumentEnd;
        assigns DocumentStart;
        assigns MappingEnd;
        assigns MappingStart;
        assigns Scalar;
        assigns SequenceEnd;
        assigns SequenceStart;
        assigns StreamEnd;
        assigns StreamStart;
        assigns $VALUES;
    }
    
    fun valueOf(arg0: java.lang.String): org.yaml.snakeyaml.events.Event$ID;
    
    fun values(): array<org.yaml.snakeyaml.events.Event$ID>;
}
automaton org.yaml.snakeyaml.introspector.FieldProperty (val arg0: java.lang.reflect.Field) : org.yaml.snakeyaml.introspector.FieldProperty {
    val field: java.lang.reflect.Field;
    fun get(arg0: java.lang.Object): java.lang.Object;
    
    fun getAnnotation(arg0: java.lang.Class): `java.lang.annotation.Annotation`;
    
    fun getAnnotations(): java.util.List;
    
    fun set(arg0: java.lang.Object, arg1: java.lang.Object): void;
}
automaton org.yaml.snakeyaml.tokens.FlowEntryToken (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.FlowEntryToken {
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
}
automaton org.yaml.snakeyaml.tokens.FlowMappingEndToken (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.FlowMappingEndToken {
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
}
automaton org.yaml.snakeyaml.tokens.FlowMappingStartToken (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.FlowMappingStartToken {
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
}
automaton org.yaml.snakeyaml.tokens.FlowSequenceEndToken (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.FlowSequenceEndToken {
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
}
automaton org.yaml.snakeyaml.tokens.FlowSequenceStartToken (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.FlowSequenceStartToken {
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
}
automaton org.yaml.snakeyaml.introspector.GenericProperty (val arg0: java.lang.String, val arg1: java.lang.Class, val arg2: java.lang.reflect.Type) : org.yaml.snakeyaml.introspector.GenericProperty {
    val genType: java.lang.reflect.Type;
    val actualClassesChecked: bool;
    val actualClasses: array<java.lang.Class>;
    fun getActualTypeArguments(): array<java.lang.Class> {
        assigns actualClasses;
        assigns actualClassesChecked;
    }
}
automaton org.yaml.snakeyaml.events.ImplicitTuple (val arg0: bool, val arg1: bool) : org.yaml.snakeyaml.events.ImplicitTuple {
    val plain: bool;
    val nonPlain: bool;
    fun bothFalse(): bool;
    
    fun canOmitTagInNonPlainScalar(): bool;
    
    fun canOmitTagInPlainScalar(): bool;
    
    fun toString(): java.lang.String;
}
automaton org.yaml.snakeyaml.tokens.KeyToken (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.KeyToken {
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
}
automaton org.yaml.snakeyaml.LoaderOptions : org.yaml.snakeyaml.LoaderOptions {
    val allowDuplicateKeys: bool;
    val wrappedToRootException: bool;
    val maxAliasesForCollections: int;
    val allowRecursiveKeys: bool;
    val processComments: bool;
    val enumCaseSensitive: bool;
    val nestingDepthLimit: int;
    val codePointLimit: int;
    val tagInspector: org.yaml.snakeyaml.inspector.TagInspector;
    fun getAllowRecursiveKeys(): bool;
    
    fun getCodePointLimit(): int;
    
    fun getMaxAliasesForCollections(): int;
    
    fun getNestingDepthLimit(): int;
    
    fun getTagInspector(): org.yaml.snakeyaml.inspector.TagInspector;
    
    fun isAllowDuplicateKeys(): bool;
    
    fun isEnumCaseSensitive(): bool;
    
    fun isProcessComments(): bool;
    
    fun isWrappedToRootException(): bool;
    
    fun setAllowDuplicateKeys(arg0: bool): void {
        assigns allowDuplicateKeys;
    }
    
    fun setAllowRecursiveKeys(arg0: bool): void {
        assigns allowRecursiveKeys;
    }
    
    fun setCodePointLimit(arg0: int): void {
        assigns codePointLimit;
    }
    
    fun setEnumCaseSensitive(arg0: bool): void {
        assigns enumCaseSensitive;
    }
    
    fun setMaxAliasesForCollections(arg0: int): void {
        assigns maxAliasesForCollections;
    }
    
    fun setNestingDepthLimit(arg0: int): void {
        assigns nestingDepthLimit;
    }
    
    fun setProcessComments(arg0: bool): org.yaml.snakeyaml.LoaderOptions {
        assigns processComments;
    }
    
    fun setTagInspector(arg0: org.yaml.snakeyaml.inspector.TagInspector): void {
        assigns tagInspector;
    }
    
    fun setWrappedToRootException(arg0: bool): void {
        assigns wrappedToRootException;
    }
}
automaton org.yaml.snakeyaml.internal.Logger (val arg0: java.lang.String) : org.yaml.snakeyaml.internal.Logger {
    val logger: java.util.logging.Logger;
    fun getLogger(arg0: java.lang.String): org.yaml.snakeyaml.internal.Logger;
    
    fun isLoggable(arg0: org.yaml.snakeyaml.internal.Logger$Level): bool;
    
    fun warn(arg0: java.lang.String): void;
}
automaton org.yaml.snakeyaml.internal.Logger$Level (val arg0: java.lang.String, val arg1: int, val arg2: java.util.logging.Level) : org.yaml.snakeyaml.internal.Logger$Level {
    val WARNING: org.yaml.snakeyaml.internal.Logger$Level;
    val level: java.util.logging.Level;
    val $VALUES: array<org.yaml.snakeyaml.internal.Logger$Level>;
    fun access$000(arg0: org.yaml.snakeyaml.internal.Logger$Level): java.util.logging.Level;
    
    fun `static-constructor`(): void {
        assigns WARNING;
        assigns $VALUES;
    }
    
    fun valueOf(arg0: java.lang.String): org.yaml.snakeyaml.internal.Logger$Level;
    
    fun values(): array<org.yaml.snakeyaml.internal.Logger$Level>;
}
automaton org.yaml.snakeyaml.events.MappingEndEvent (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.events.MappingEndEvent {
    fun getEventId(): org.yaml.snakeyaml.events.Event$ID;
}
automaton org.yaml.snakeyaml.nodes.MappingNode (val arg0: org.yaml.snakeyaml.nodes.Tag, val arg1: bool, val arg2: java.util.List, val arg3: org.yaml.snakeyaml.error.Mark, val arg4: org.yaml.snakeyaml.error.Mark, val arg5: org.yaml.snakeyaml.DumperOptions$FlowStyle) : org.yaml.snakeyaml.nodes.MappingNode {
    val value: java.util.List;
    val merged: bool;
    fun getNodeId(): org.yaml.snakeyaml.nodes.NodeId;
    
    fun getValue(): java.util.List;
    
    fun isMerged(): bool;
    
    fun setMerged(arg0: bool): void {
        assigns merged;
    }
    
    fun setOnlyKeyType(arg0: java.lang.Class): void;
    
    fun setTypes(arg0: java.lang.Class, arg1: java.lang.Class): void;
    
    fun setValue(arg0: java.util.List): void {
        assigns value;
    }
    
    fun toString(): java.lang.String;
}
automaton org.yaml.snakeyaml.events.MappingStartEvent (val arg0: java.lang.String, val arg1: java.lang.String, val arg2: bool, val arg3: org.yaml.snakeyaml.error.Mark, val arg4: org.yaml.snakeyaml.error.Mark, val arg5: org.yaml.snakeyaml.DumperOptions$FlowStyle) : org.yaml.snakeyaml.events.MappingStartEvent {
    fun getEventId(): org.yaml.snakeyaml.events.Event$ID;
}
automaton org.yaml.snakeyaml.error.Mark (val arg0: java.lang.String, val arg1: int, val arg2: int, val arg3: int, val arg4: array<char>, val arg5: int) : org.yaml.snakeyaml.error.Mark {
    val name: java.lang.String;
    val index: int;
    val line: int;
    val column: int;
    val buffer: array<int>;
    val pointer: int;
    fun getBuffer(): array<int>;
    
    fun getColumn(): int;
    
    fun getIndex(): int;
    
    fun getLine(): int;
    
    fun getName(): java.lang.String;
    
    fun getPointer(): int;
    
    fun get_snippet(arg0: int, arg1: int): java.lang.String;
    
    fun get_snippet(): java.lang.String;
    
    fun isLineBreak(arg0: int): bool;
    
    fun toCodePoints(arg0: array): array<int>;
    
    fun toString(): java.lang.String;
}
automaton org.yaml.snakeyaml.error.MarkedYAMLException (val arg0: java.lang.String, val arg1: org.yaml.snakeyaml.error.Mark, val arg2: java.lang.String, val arg3: org.yaml.snakeyaml.error.Mark, val arg4: java.lang.String) : org.yaml.snakeyaml.error.MarkedYAMLException {
    val serialVersionUID: long;
    val context: java.lang.String;
    val contextMark: org.yaml.snakeyaml.error.Mark;
    val problem: java.lang.String;
    val problemMark: org.yaml.snakeyaml.error.Mark;
    val note: java.lang.String;
    fun getContext(): java.lang.String;
    
    fun getContextMark(): org.yaml.snakeyaml.error.Mark;
    
    fun getMessage(): java.lang.String;
    
    fun getProblem(): java.lang.String;
    
    fun getProblemMark(): org.yaml.snakeyaml.error.Mark;
    
    fun toString(): java.lang.String;
}
automaton org.yaml.snakeyaml.introspector.MethodProperty (val arg0: java.beans.PropertyDescriptor) : org.yaml.snakeyaml.introspector.MethodProperty {
    val property: java.beans.PropertyDescriptor;
    val readable: bool;
    val writable: bool;
    fun discoverGenericType(arg0: java.beans.PropertyDescriptor): java.lang.reflect.Type;
    
    fun get(arg0: java.lang.Object): java.lang.Object;
    
    fun getAnnotation(arg0: java.lang.Class): `java.lang.annotation.Annotation`;
    
    fun getAnnotations(): java.util.List;
    
    fun isReadable(): bool;
    
    fun isWritable(): bool;
    
    fun set(arg0: java.lang.Object, arg1: java.lang.Object): void;
}
automaton org.yaml.snakeyaml.error.MissingEnvironmentVariableException (val arg0: java.lang.String) : org.yaml.snakeyaml.error.MissingEnvironmentVariableException {
}
automaton org.yaml.snakeyaml.introspector.MissingProperty (val arg0: java.lang.String) : org.yaml.snakeyaml.introspector.MissingProperty {
    fun get(arg0: java.lang.Object): java.lang.Object;
    
    fun getActualTypeArguments(): array<java.lang.Class>;
    
    fun getAnnotation(arg0: java.lang.Class): `java.lang.annotation.Annotation`;
    
    fun getAnnotations(): java.util.List;
    
    fun set(arg0: java.lang.Object, arg1: java.lang.Object): void;
}
automaton org.yaml.snakeyaml.nodes.Node (val arg0: org.yaml.snakeyaml.nodes.Tag, val arg1: org.yaml.snakeyaml.error.Mark, val arg2: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.nodes.Node {
    val tag: org.yaml.snakeyaml.nodes.Tag;
    val startMark: org.yaml.snakeyaml.error.Mark;
    val endMark: org.yaml.snakeyaml.error.Mark;
    val `type`: java.lang.Class;
    val twoStepsConstruction: bool;
    val anchor: java.lang.String;
    val inLineComments: java.util.List;
    val blockComments: java.util.List;
    val endComments: java.util.List;
    val resolved: bool;
    val useClassConstructor: bool;
    fun equals(arg0: java.lang.Object): bool;
    
    fun getAnchor(): java.lang.String;
    
    fun getBlockComments(): java.util.List;
    
    fun getEndComments(): java.util.List;
    
    fun getEndMark(): org.yaml.snakeyaml.error.Mark;
    
    fun getInLineComments(): java.util.List;
    
    fun getNodeId(): org.yaml.snakeyaml.nodes.NodeId;
    
    fun getStartMark(): org.yaml.snakeyaml.error.Mark;
    
    fun getTag(): org.yaml.snakeyaml.nodes.Tag;
    
    fun getType(): java.lang.Class;
    
    fun hashCode(): int;
    
    fun isTwoStepsConstruction(): bool;
    
    fun setAnchor(arg0: java.lang.String): void {
        assigns anchor;
    }
    
    fun setBlockComments(arg0: java.util.List): void {
        assigns blockComments;
    }
    
    fun setEndComments(arg0: java.util.List): void {
        assigns endComments;
    }
    
    fun setInLineComments(arg0: java.util.List): void {
        assigns inLineComments;
    }
    
    fun setTag(arg0: org.yaml.snakeyaml.nodes.Tag): void {
        assigns tag;
    }
    
    fun setTwoStepsConstruction(arg0: bool): void {
        assigns twoStepsConstruction;
    }
    
    fun setType(arg0: java.lang.Class): void {
        assigns `type`;
    }
    
    fun setUseClassConstructor(arg0: bool): void {
        assigns useClassConstructor;
    }
    
    fun useClassConstructor(): bool;
}
automaton org.yaml.snakeyaml.events.NodeEvent (val arg0: java.lang.String, val arg1: org.yaml.snakeyaml.error.Mark, val arg2: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.events.NodeEvent {
    val anchor: java.lang.String;
    fun getAnchor(): java.lang.String;
    
    fun getArguments(): java.lang.String;
}
automaton org.yaml.snakeyaml.nodes.NodeId (val arg0: java.lang.String, val arg1: int) : org.yaml.snakeyaml.nodes.NodeId {
    val scalar: org.yaml.snakeyaml.nodes.NodeId;
    val sequence: org.yaml.snakeyaml.nodes.NodeId;
    val mapping: org.yaml.snakeyaml.nodes.NodeId;
    val anchor: org.yaml.snakeyaml.nodes.NodeId;
    val $VALUES: array<org.yaml.snakeyaml.nodes.NodeId>;
    fun `static-constructor`(): void {
        assigns scalar;
        assigns sequence;
        assigns mapping;
        assigns anchor;
        assigns $VALUES;
    }
    
    fun valueOf(arg0: java.lang.String): org.yaml.snakeyaml.nodes.NodeId;
    
    fun values(): array<org.yaml.snakeyaml.nodes.NodeId>;
}
automaton org.yaml.snakeyaml.nodes.NodeTuple (val arg0: org.yaml.snakeyaml.nodes.Node, val arg1: org.yaml.snakeyaml.nodes.Node) : org.yaml.snakeyaml.nodes.NodeTuple {
    val keyNode: org.yaml.snakeyaml.nodes.Node;
    val valueNode: org.yaml.snakeyaml.nodes.Node;
    fun getKeyNode(): org.yaml.snakeyaml.nodes.Node;
    
    fun getValueNode(): org.yaml.snakeyaml.nodes.Node;
    
    fun toString(): java.lang.String;
}
automaton org.yaml.snakeyaml.serializer.NumberAnchorGenerator (val arg0: int) : org.yaml.snakeyaml.serializer.NumberAnchorGenerator {
    val lastAnchorId: int;
    fun nextAnchor(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.String {
        assigns lastAnchorId;
    }
}
automaton org.yaml.snakeyaml.extensions.compactnotation.PackageCompactConstructor (val arg0: java.lang.String) : org.yaml.snakeyaml.extensions.compactnotation.PackageCompactConstructor {
    val packageName: java.lang.String;
    fun getClassForName(arg0: java.lang.String): java.lang.Class;
}
automaton org.yaml.snakeyaml.parser.Parser : org.yaml.snakeyaml.parser.Parser {
    fun checkEvent(arg0: org.yaml.snakeyaml.events.Event$ID): bool;
    
    fun getEvent(): org.yaml.snakeyaml.events.Event;
    
    fun peekEvent(): org.yaml.snakeyaml.events.Event;
}
automaton org.yaml.snakeyaml.parser.ParserException (val arg0: java.lang.String, val arg1: org.yaml.snakeyaml.error.Mark, val arg2: java.lang.String, val arg3: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.parser.ParserException {
    val serialVersionUID: long;
}
automaton org.yaml.snakeyaml.parser.ParserImpl (val arg0: org.yaml.snakeyaml.reader.StreamReader, val arg1: org.yaml.snakeyaml.LoaderOptions) : org.yaml.snakeyaml.parser.ParserImpl {
    val DEFAULT_TAGS: java.util.Map;
    val scanner: org.yaml.snakeyaml.scanner.Scanner;
    val currentEvent: org.yaml.snakeyaml.events.Event;
    val states: org.yaml.snakeyaml.util.ArrayStack;
    val marks: org.yaml.snakeyaml.util.ArrayStack;
    val `state`: org.yaml.snakeyaml.parser.Production;
    val directives: org.yaml.snakeyaml.parser.VersionTagsTuple;
    fun access$100(arg0: org.yaml.snakeyaml.parser.ParserImpl): org.yaml.snakeyaml.parser.Production;
    
    fun access$1000(arg0: org.yaml.snakeyaml.parser.ParserImpl): org.yaml.snakeyaml.util.ArrayStack;
    
    fun access$102(arg0: org.yaml.snakeyaml.parser.ParserImpl, arg1: org.yaml.snakeyaml.parser.Production): org.yaml.snakeyaml.parser.Production {
        assigns arg0.`state`;
    }
    
    fun access$1100(arg0: org.yaml.snakeyaml.parser.ParserImpl, arg1: org.yaml.snakeyaml.error.Mark): org.yaml.snakeyaml.events.Event;
    
    fun access$1200(arg0: org.yaml.snakeyaml.parser.ParserImpl, arg1: bool, arg2: bool): org.yaml.snakeyaml.events.Event {
        assigns arg0.`state`;
    }
    
    fun access$2100(arg0: org.yaml.snakeyaml.parser.ParserImpl): org.yaml.snakeyaml.events.Event {
        assigns arg0.`state`;
    }
    
    fun access$2400(arg0: org.yaml.snakeyaml.parser.ParserImpl): org.yaml.snakeyaml.events.Event {
        assigns arg0.`state`;
    }
    
    fun access$300(arg0: org.yaml.snakeyaml.parser.ParserImpl, arg1: org.yaml.snakeyaml.tokens.CommentToken): org.yaml.snakeyaml.events.CommentEvent;
    
    fun access$500(arg0: org.yaml.snakeyaml.parser.ParserImpl): org.yaml.snakeyaml.util.ArrayStack;
    
    fun access$800(arg0: org.yaml.snakeyaml.parser.ParserImpl): org.yaml.snakeyaml.parser.VersionTagsTuple {
        assigns arg0.directives;
    }
    
    fun checkEvent(arg0: org.yaml.snakeyaml.events.Event$ID): bool {
        assigns currentEvent;
    }
    
    fun getEvent(): org.yaml.snakeyaml.events.Event {
        assigns currentEvent;
    }
    
    fun parseBlockNodeOrIndentlessSequence(): org.yaml.snakeyaml.events.Event {
        assigns `state`;
    }
    
    fun parseFlowNode(): org.yaml.snakeyaml.events.Event {
        assigns `state`;
    }
    
    fun parseNode(arg0: bool, arg1: bool): org.yaml.snakeyaml.events.Event {
        assigns `state`;
    }
    
    fun peekEvent(): org.yaml.snakeyaml.events.Event {
        assigns currentEvent;
    }
    
    fun processDirectives(): org.yaml.snakeyaml.parser.VersionTagsTuple {
        assigns directives;
    }
    
    fun processEmptyScalar(arg0: org.yaml.snakeyaml.error.Mark): org.yaml.snakeyaml.events.Event;
    
    fun produceCommentEvent(arg0: org.yaml.snakeyaml.tokens.CommentToken): org.yaml.snakeyaml.events.CommentEvent;
    
    fun `static-constructor`(): void {
        assigns DEFAULT_TAGS;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$1 : org.yaml.snakeyaml.parser.ParserImpl$1 {
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseBlockMappingFirstKey (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseBlockMappingFirstKey {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event;
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseBlockMappingKey (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseBlockMappingKey {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseBlockMappingValue (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseBlockMappingValue {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseBlockMappingValueComment (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseBlockMappingValueComment {
    val tokens: java.util.List;
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseBlockMappingValueCommentList (val arg0: org.yaml.snakeyaml.parser.ParserImpl, val arg1: java.util.List) : org.yaml.snakeyaml.parser.ParserImpl$ParseBlockMappingValueCommentList {
    val tokens: java.util.List;
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event;
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseBlockNode (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseBlockNode {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseBlockSequenceEntryKey (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseBlockSequenceEntryKey {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseBlockSequenceEntryValue (val arg0: org.yaml.snakeyaml.parser.ParserImpl, val arg1: org.yaml.snakeyaml.tokens.BlockEntryToken) : org.yaml.snakeyaml.parser.ParserImpl$ParseBlockSequenceEntryValue {
    val token: org.yaml.snakeyaml.tokens.BlockEntryToken;
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseBlockSequenceFirstEntry (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseBlockSequenceFirstEntry {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event;
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseDocumentContent (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseDocumentContent {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseDocumentEnd (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseDocumentEnd {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseDocumentStart (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseDocumentStart {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.directives;
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseFlowEndComment (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseFlowEndComment {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseFlowMappingEmptyValue (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseFlowMappingEmptyValue {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseFlowMappingFirstKey (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseFlowMappingFirstKey {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event;
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseFlowMappingKey (val arg0: org.yaml.snakeyaml.parser.ParserImpl, val arg1: bool) : org.yaml.snakeyaml.parser.ParserImpl$ParseFlowMappingKey {
    val first: bool;
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseFlowMappingValue (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseFlowMappingValue {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseFlowSequenceEntry (val arg0: org.yaml.snakeyaml.parser.ParserImpl, val arg1: bool) : org.yaml.snakeyaml.parser.ParserImpl$ParseFlowSequenceEntry {
    val first: bool;
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseFlowSequenceEntryMappingEnd (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseFlowSequenceEntryMappingEnd {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseFlowSequenceEntryMappingKey (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseFlowSequenceEntryMappingKey {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseFlowSequenceEntryMappingValue (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseFlowSequenceEntryMappingValue {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseFlowSequenceFirstEntry (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseFlowSequenceFirstEntry {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event;
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseImplicitDocumentStart (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseImplicitDocumentStart {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseIndentlessSequenceEntryKey (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseIndentlessSequenceEntryKey {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseIndentlessSequenceEntryValue (val arg0: org.yaml.snakeyaml.parser.ParserImpl, val arg1: org.yaml.snakeyaml.tokens.BlockEntryToken) : org.yaml.snakeyaml.parser.ParserImpl$ParseIndentlessSequenceEntryValue {
    val token: org.yaml.snakeyaml.tokens.BlockEntryToken;
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.parser.ParserImpl$ParseStreamStart (val arg0: org.yaml.snakeyaml.parser.ParserImpl) : org.yaml.snakeyaml.parser.ParserImpl$ParseStreamStart {
    val this$0: org.yaml.snakeyaml.parser.ParserImpl;
    fun produce(): org.yaml.snakeyaml.events.Event {
        assigns this$0.`state`;
    }
}
automaton org.yaml.snakeyaml.external.com.google.gdata.util.common.base.PercentEscaper (val arg0: java.lang.String, val arg1: bool) : org.yaml.snakeyaml.external.com.google.gdata.util.common.base.PercentEscaper {
    val SAFECHARS_URLENCODER: java.lang.String;
    val SAFEPATHCHARS_URLENCODER: java.lang.String;
    val SAFEQUERYSTRINGCHARS_URLENCODER: java.lang.String;
    val URI_ESCAPED_SPACE: array<char>;
    val UPPER_HEX_DIGITS: array<char>;
    val plusForSpace: bool;
    val safeOctets: array<bool>;
    fun createSafeOctets(arg0: java.lang.String): array<bool>;
    
    fun escape(arg0: java.lang.String): java.lang.String;
    
    fun escape(arg0: int): array<char>;
    
    fun nextEscapeIndex(arg0: java.lang.CharSequence, arg1: int, arg2: int): int;
    
    fun `static-constructor`(): void {
        assigns URI_ESCAPED_SPACE;
        assigns UPPER_HEX_DIGITS;
    }
}
automaton org.yaml.snakeyaml.util.PlatformFeatureDetector : org.yaml.snakeyaml.util.PlatformFeatureDetector {
    val isRunningOnAndroid: bool;
    fun isRunningOnAndroid(): bool {
        assigns isRunningOnAndroid;
    }
}
automaton org.yaml.snakeyaml.parser.Production : org.yaml.snakeyaml.parser.Production {
    fun produce(): org.yaml.snakeyaml.events.Event;
}
automaton org.yaml.snakeyaml.introspector.Property (val arg0: java.lang.String, val arg1: java.lang.Class) : org.yaml.snakeyaml.introspector.Property {
    val name: java.lang.String;
    val `type`: java.lang.Class;
    fun compareTo(arg0: org.yaml.snakeyaml.introspector.Property): int;
    
    fun compareTo(arg0: java.lang.Object): int;
    
    fun equals(arg0: java.lang.Object): bool;
    
    fun get(arg0: java.lang.Object): java.lang.Object;
    
    fun getActualTypeArguments(): array<java.lang.Class>;
    
    fun getAnnotation(arg0: java.lang.Class): `java.lang.annotation.Annotation`;
    
    fun getAnnotations(): java.util.List;
    
    fun getName(): java.lang.String;
    
    fun getType(): java.lang.Class;
    
    fun hashCode(): int;
    
    fun isReadable(): bool;
    
    fun isWritable(): bool;
    
    fun set(arg0: java.lang.Object, arg1: java.lang.Object): void;
    
    fun toString(): java.lang.String;
}
automaton org.yaml.snakeyaml.introspector.PropertySubstitute (val arg0: java.lang.String, val arg1: java.lang.Class, val arg2: java.lang.String, val arg3: java.lang.String, val arg4: array<java.lang.Class>) : org.yaml.snakeyaml.introspector.PropertySubstitute {
    val log: org.yaml.snakeyaml.internal.Logger;
    val targetType: java.lang.Class;
    val readMethod: java.lang.String;
    val writeMethod: java.lang.String;
    val read: java.lang.reflect.Method;
    val write: java.lang.reflect.Method;
    val field: java.lang.reflect.Field;
    val parameters: array<java.lang.Class>;
    val delegate: org.yaml.snakeyaml.introspector.Property;
    val filler: bool;
    fun discoverMethod(arg0: java.lang.Class, arg1: java.lang.String, arg2: array): java.lang.reflect.Method;
    
    fun get(arg0: java.lang.Object): java.lang.Object;
    
    fun getActualTypeArguments(): array<java.lang.Class>;
    
    fun getAnnotation(arg0: java.lang.Class): `java.lang.annotation.Annotation`;
    
    fun getAnnotations(): java.util.List;
    
    fun getName(): java.lang.String;
    
    fun getType(): java.lang.Class;
    
    fun isReadable(): bool;
    
    fun isWritable(): bool;
    
    fun set(arg0: java.lang.Object, arg1: java.lang.Object): void;
    
    fun setActualTypeArguments(arg0: array): void {
        assigns parameters;
    }
    
    fun setDelegate(arg0: org.yaml.snakeyaml.introspector.Property): void {
        assigns delegate;
        assigns filler;
        assigns write;
    }
    
    fun setTargetType(arg0: java.lang.Class): void {
        assigns targetType;
        assigns field;
        assigns read;
        assigns filler;
        assigns write;
    }
    
    fun `static-constructor`(): void {
        assigns log;
    }
}
automaton org.yaml.snakeyaml.introspector.PropertyUtils : org.yaml.snakeyaml.introspector.PropertyUtils {
    val propertiesCache: java.util.Map;
    val readableProperties: java.util.Map;
    val beanAccess: org.yaml.snakeyaml.introspector.BeanAccess;
    val allowReadOnlyProperties: bool;
    val skipMissingProperties: bool;
    val platformFeatureDetector: org.yaml.snakeyaml.util.PlatformFeatureDetector;
    val TRANSIENT: java.lang.String;
    fun createPropertySet(arg0: java.lang.Class, arg1: org.yaml.snakeyaml.introspector.BeanAccess): java.util.Set;
    
    fun getProperties(arg0: java.lang.Class): java.util.Set;
    
    fun getProperties(arg0: java.lang.Class, arg1: org.yaml.snakeyaml.introspector.BeanAccess): java.util.Set;
    
    fun getPropertiesMap(arg0: java.lang.Class, arg1: org.yaml.snakeyaml.introspector.BeanAccess): java.util.Map;
    
    fun getProperty(arg0: java.lang.Class, arg1: java.lang.String): org.yaml.snakeyaml.introspector.Property;
    
    fun getProperty(arg0: java.lang.Class, arg1: java.lang.String, arg2: org.yaml.snakeyaml.introspector.BeanAccess): org.yaml.snakeyaml.introspector.Property;
    
    fun isAllowReadOnlyProperties(): bool;
    
    fun isSkipMissingProperties(): bool;
    
    fun isTransient(arg0: java.beans.FeatureDescriptor): bool;
    
    fun setAllowReadOnlyProperties(arg0: bool): void {
        assigns allowReadOnlyProperties;
    }
    
    fun setBeanAccess(arg0: org.yaml.snakeyaml.introspector.BeanAccess): void {
        assigns beanAccess;
    }
    
    fun setSkipMissingProperties(arg0: bool): void {
        assigns skipMissingProperties;
    }
}
automaton org.yaml.snakeyaml.reader.ReaderException (val arg0: java.lang.String, val arg1: int, val arg2: int, val arg3: java.lang.String) : org.yaml.snakeyaml.reader.ReaderException {
    val serialVersionUID: long;
    val name: java.lang.String;
    val codePoint: int;
    val position: int;
    fun getCodePoint(): int;
    
    fun getName(): java.lang.String;
    
    fun getPosition(): int;
    
    fun toString(): java.lang.String;
}
automaton org.yaml.snakeyaml.representer.Represent : org.yaml.snakeyaml.representer.Represent {
    fun representData(arg0: java.lang.Object): org.yaml.snakeyaml.nodes.Node;
}
automaton org.yaml.snakeyaml.representer.Representer (val arg0: org.yaml.snakeyaml.DumperOptions) : org.yaml.snakeyaml.representer.Representer {
    val typeDefinitions: java.util.Map;
    fun addClassTag(arg0: java.lang.Class, arg1: org.yaml.snakeyaml.nodes.Tag): org.yaml.snakeyaml.nodes.Tag;
    
    fun addTypeDescription(arg0: org.yaml.snakeyaml.TypeDescription): org.yaml.snakeyaml.TypeDescription {
        assigns typeDefinitions;
        assigns arg0.propertyUtils;
    }
    
    fun checkGlobalTag(arg0: org.yaml.snakeyaml.introspector.Property, arg1: org.yaml.snakeyaml.nodes.Node, arg2: java.lang.Object): void {
        assigns arg0;
    }
    
    fun getProperties(arg0: java.lang.Class): java.util.Set;
    
    fun getTimeZone(): java.util.TimeZone;
    
    fun representJavaBean(arg0: java.util.Set, arg1: java.lang.Object): org.yaml.snakeyaml.nodes.MappingNode;
    
    fun representJavaBeanProperty(arg0: java.lang.Object, arg1: org.yaml.snakeyaml.introspector.Property, arg2: java.lang.Object, arg3: org.yaml.snakeyaml.nodes.Tag): org.yaml.snakeyaml.nodes.NodeTuple {
        assigns arg1;
    }
    
    fun resetTag(arg0: java.lang.Class, arg1: org.yaml.snakeyaml.nodes.Node): void {
        assigns arg1.tag;
    }
    
    fun setPropertyUtils(arg0: org.yaml.snakeyaml.introspector.PropertyUtils): void;
    
    fun setTimeZone(arg0: java.util.TimeZone): void;
}
automaton org.yaml.snakeyaml.representer.Representer$RepresentJavaBean (val arg0: org.yaml.snakeyaml.representer.Representer) : org.yaml.snakeyaml.representer.Representer$RepresentJavaBean {
    val this$0: org.yaml.snakeyaml.representer.Representer;
    fun representData(arg0: java.lang.Object): org.yaml.snakeyaml.nodes.Node;
}
automaton org.yaml.snakeyaml.resolver.Resolver : org.yaml.snakeyaml.resolver.Resolver {
    val BOOL: java.util.regex.Pattern;
    val FLOAT: java.util.regex.Pattern;
    val INT: java.util.regex.Pattern;
    val MERGE: java.util.regex.Pattern;
    val NULL: java.util.regex.Pattern;
    val EMPTY: java.util.regex.Pattern;
    val TIMESTAMP: java.util.regex.Pattern;
    val VALUE: java.util.regex.Pattern;
    val YAML: java.util.regex.Pattern;
    val yamlImplicitResolvers: java.util.Map;
    fun addImplicitResolver(arg0: org.yaml.snakeyaml.nodes.Tag, arg1: java.util.regex.Pattern, arg2: java.lang.String): void;
    
    fun addImplicitResolver(arg0: org.yaml.snakeyaml.nodes.Tag, arg1: java.util.regex.Pattern, arg2: java.lang.String, arg3: int): void;
    
    fun addImplicitResolvers(): void;
    
    fun resolve(arg0: org.yaml.snakeyaml.nodes.NodeId, arg1: java.lang.String, arg2: bool): org.yaml.snakeyaml.nodes.Tag;
    
    fun `static-constructor`(): void {
        assigns BOOL;
        assigns FLOAT;
        assigns INT;
        assigns MERGE;
        assigns NULL;
        assigns EMPTY;
        assigns TIMESTAMP;
        assigns VALUE;
        assigns YAML;
    }
}
automaton org.yaml.snakeyaml.resolver.Resolver$1 : org.yaml.snakeyaml.resolver.Resolver$1 {
    val $SwitchMap$org$yaml$snakeyaml$nodes$NodeId: array<int>;
    fun `static-constructor`(): void {
        assigns $SwitchMap$org$yaml$snakeyaml$nodes$NodeId;
    }
}
automaton org.yaml.snakeyaml.resolver.ResolverTuple (val arg0: org.yaml.snakeyaml.nodes.Tag, val arg1: java.util.regex.Pattern, val arg2: int) : org.yaml.snakeyaml.resolver.ResolverTuple {
    val tag: org.yaml.snakeyaml.nodes.Tag;
    val regexp: java.util.regex.Pattern;
    val limit: int;
    fun getLimit(): int;
    
    fun getRegexp(): java.util.regex.Pattern;
    
    fun getTag(): org.yaml.snakeyaml.nodes.Tag;
    
    fun toString(): java.lang.String;
}
automaton `org.yaml.snakeyaml.constructor.SafeConstructor` (val arg0: org.yaml.snakeyaml.LoaderOptions) : `org.yaml.snakeyaml.constructor.SafeConstructor` {
    val undefinedConstructor: `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructUndefined`;
    val BOOL_VALUES: java.util.Map;
    val RADIX_MAX: array<array<int>>;
    val TIMESTAMP_REGEXP: java.util.regex.Pattern;
    val YMD_REGEXP: java.util.regex.Pattern;
    fun access$000(): java.util.Map;
    
    fun access$100(arg0: `org.yaml.snakeyaml.constructor.SafeConstructor`, arg1: int, arg2: java.lang.String, arg3: int): java.lang.Number;
    
    fun access$200(): java.util.regex.Pattern;
    
    fun access$300(): java.util.regex.Pattern;
    
    fun constructMapping2ndStep(arg0: org.yaml.snakeyaml.nodes.MappingNode, arg1: java.util.Map): void {
        assigns arg0.value;
    }
    
    fun constructSet2ndStep(arg0: org.yaml.snakeyaml.nodes.MappingNode, arg1: java.util.Set): void {
        assigns arg0.value;
    }
    
    fun createLongOrBigInteger(arg0: java.lang.String, arg1: int): java.lang.Number;
    
    fun createNumber(arg0: int, arg1: java.lang.String, arg2: int): java.lang.Number;
    
    fun flattenMapping(arg0: org.yaml.snakeyaml.nodes.MappingNode): void {
        assigns arg0.value;
    }
    
    fun flattenMapping(arg0: org.yaml.snakeyaml.nodes.MappingNode, arg1: bool): void {
        assigns arg0.value;
    }
    
    fun maxLen(arg0: int, arg1: int): int;
    
    fun maxLen(arg0: long, arg1: int): int;
    
    fun mergeNode(arg0: org.yaml.snakeyaml.nodes.MappingNode, arg1: bool, arg2: java.util.Map, arg3: java.util.List, arg4: bool): java.util.List;
    
    fun processDuplicateKeys(arg0: org.yaml.snakeyaml.nodes.MappingNode): void;
    
    fun processDuplicateKeys(arg0: org.yaml.snakeyaml.nodes.MappingNode, arg1: bool): void;
    
    fun `static-constructor`(): void {
        assigns undefinedConstructor;
        assigns BOOL_VALUES;
        assigns RADIX_MAX;
        assigns TIMESTAMP_REGEXP;
        assigns YMD_REGEXP;
    }
}
automaton `org.yaml.snakeyaml.constructor.SafeConstructor$1` : `org.yaml.snakeyaml.constructor.SafeConstructor$1` {
    val $SwitchMap$org$yaml$snakeyaml$nodes$NodeId: array<int>;
    fun `static-constructor`(): void {
        assigns $SwitchMap$org$yaml$snakeyaml$nodes$NodeId;
    }
}
automaton `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructUndefined` : `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructUndefined` {
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
}
automaton `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlBinary` (val arg0: `org.yaml.snakeyaml.constructor.SafeConstructor`) : `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlBinary` {
    val this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
}
automaton `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlBool` (val arg0: `org.yaml.snakeyaml.constructor.SafeConstructor`) : `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlBool` {
    val this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
}
automaton `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlFloat` (val arg0: `org.yaml.snakeyaml.constructor.SafeConstructor`) : `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlFloat` {
    val this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
}
automaton `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlInt` (val arg0: `org.yaml.snakeyaml.constructor.SafeConstructor`) : `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlInt` {
    val this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
}
automaton `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlMap` (val arg0: `org.yaml.snakeyaml.constructor.SafeConstructor`) : `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlMap` {
    val this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
    
    fun construct2ndStep(arg0: org.yaml.snakeyaml.nodes.Node, arg1: java.lang.Object): void;
}
automaton `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlNull` (val arg0: `org.yaml.snakeyaml.constructor.SafeConstructor`) : `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlNull` {
    val this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
}
automaton `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlOmap` (val arg0: `org.yaml.snakeyaml.constructor.SafeConstructor`) : `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlOmap` {
    val this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
}
automaton `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlPairs` (val arg0: `org.yaml.snakeyaml.constructor.SafeConstructor`) : `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlPairs` {
    val this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
}
automaton `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlSeq` (val arg0: `org.yaml.snakeyaml.constructor.SafeConstructor`) : `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlSeq` {
    val this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
    
    fun construct2ndStep(arg0: org.yaml.snakeyaml.nodes.Node, arg1: java.lang.Object): void;
}
automaton `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlSet` (val arg0: `org.yaml.snakeyaml.constructor.SafeConstructor`) : `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlSet` {
    val this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
    
    fun construct2ndStep(arg0: org.yaml.snakeyaml.nodes.Node, arg1: java.lang.Object): void;
}
automaton `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlStr` (val arg0: `org.yaml.snakeyaml.constructor.SafeConstructor`) : `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlStr` {
    val this$0: `org.yaml.snakeyaml.constructor.SafeConstructor`;
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
}
automaton `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlTimestamp` : `org.yaml.snakeyaml.constructor.SafeConstructor$ConstructYamlTimestamp` {
    val calendar: java.util.Calendar;
    fun construct(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object {
        assigns calendar;
    }
    
    fun getCalendar(): java.util.Calendar;
}
automaton org.yaml.snakeyaml.representer.SafeRepresenter (val arg0: org.yaml.snakeyaml.DumperOptions) : org.yaml.snakeyaml.representer.SafeRepresenter {
    val classTags: java.util.Map;
    val timeZone: java.util.TimeZone;
    val nonPrintableStyle: org.yaml.snakeyaml.DumperOptions$NonPrintableStyle;
    val MULTILINE_PATTERN: java.util.regex.Pattern;
    fun access$000(): java.util.regex.Pattern;
    
    fun addClassTag(arg0: java.lang.Class, arg1: org.yaml.snakeyaml.nodes.Tag): org.yaml.snakeyaml.nodes.Tag;
    
    fun getTag(arg0: java.lang.Class, arg1: org.yaml.snakeyaml.nodes.Tag): org.yaml.snakeyaml.nodes.Tag;
    
    fun getTimeZone(): java.util.TimeZone;
    
    fun setTimeZone(arg0: java.util.TimeZone): void {
        assigns timeZone;
    }
    
    fun `static-constructor`(): void {
        assigns MULTILINE_PATTERN;
    }
}
automaton org.yaml.snakeyaml.representer.SafeRepresenter$IteratorWrapper (val arg0: java.util.Iterator) : org.yaml.snakeyaml.representer.SafeRepresenter$IteratorWrapper {
    val iter: java.util.Iterator;
    fun iterator(): java.util.Iterator;
}
automaton org.yaml.snakeyaml.representer.SafeRepresenter$RepresentArray (val arg0: org.yaml.snakeyaml.representer.SafeRepresenter) : org.yaml.snakeyaml.representer.SafeRepresenter$RepresentArray {
    val this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
    fun representData(arg0: java.lang.Object): org.yaml.snakeyaml.nodes.Node;
}
automaton org.yaml.snakeyaml.representer.SafeRepresenter$RepresentBoolean (val arg0: org.yaml.snakeyaml.representer.SafeRepresenter) : org.yaml.snakeyaml.representer.SafeRepresenter$RepresentBoolean {
    val this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
    fun representData(arg0: java.lang.Object): org.yaml.snakeyaml.nodes.Node;
}
automaton org.yaml.snakeyaml.representer.SafeRepresenter$RepresentByteArray (val arg0: org.yaml.snakeyaml.representer.SafeRepresenter) : org.yaml.snakeyaml.representer.SafeRepresenter$RepresentByteArray {
    val this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
    fun representData(arg0: java.lang.Object): org.yaml.snakeyaml.nodes.Node;
}
automaton org.yaml.snakeyaml.representer.SafeRepresenter$RepresentDate (val arg0: org.yaml.snakeyaml.representer.SafeRepresenter) : org.yaml.snakeyaml.representer.SafeRepresenter$RepresentDate {
    val this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
    fun representData(arg0: java.lang.Object): org.yaml.snakeyaml.nodes.Node;
}
automaton org.yaml.snakeyaml.representer.SafeRepresenter$RepresentEnum (val arg0: org.yaml.snakeyaml.representer.SafeRepresenter) : org.yaml.snakeyaml.representer.SafeRepresenter$RepresentEnum {
    val this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
    fun representData(arg0: java.lang.Object): org.yaml.snakeyaml.nodes.Node;
}
automaton org.yaml.snakeyaml.representer.SafeRepresenter$RepresentIterator (val arg0: org.yaml.snakeyaml.representer.SafeRepresenter) : org.yaml.snakeyaml.representer.SafeRepresenter$RepresentIterator {
    val this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
    fun representData(arg0: java.lang.Object): org.yaml.snakeyaml.nodes.Node;
}
automaton org.yaml.snakeyaml.representer.SafeRepresenter$RepresentList (val arg0: org.yaml.snakeyaml.representer.SafeRepresenter) : org.yaml.snakeyaml.representer.SafeRepresenter$RepresentList {
    val this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
    fun representData(arg0: java.lang.Object): org.yaml.snakeyaml.nodes.Node;
}
automaton org.yaml.snakeyaml.representer.SafeRepresenter$RepresentMap (val arg0: org.yaml.snakeyaml.representer.SafeRepresenter) : org.yaml.snakeyaml.representer.SafeRepresenter$RepresentMap {
    val this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
    fun representData(arg0: java.lang.Object): org.yaml.snakeyaml.nodes.Node;
}
automaton org.yaml.snakeyaml.representer.SafeRepresenter$RepresentNull (val arg0: org.yaml.snakeyaml.representer.SafeRepresenter) : org.yaml.snakeyaml.representer.SafeRepresenter$RepresentNull {
    val this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
    fun representData(arg0: java.lang.Object): org.yaml.snakeyaml.nodes.Node;
}
automaton org.yaml.snakeyaml.representer.SafeRepresenter$RepresentNumber (val arg0: org.yaml.snakeyaml.representer.SafeRepresenter) : org.yaml.snakeyaml.representer.SafeRepresenter$RepresentNumber {
    val this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
    fun representData(arg0: java.lang.Object): org.yaml.snakeyaml.nodes.Node;
}
automaton org.yaml.snakeyaml.representer.SafeRepresenter$RepresentPrimitiveArray (val arg0: org.yaml.snakeyaml.representer.SafeRepresenter) : org.yaml.snakeyaml.representer.SafeRepresenter$RepresentPrimitiveArray {
    val this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
    fun asBooleanList(arg0: java.lang.Object): java.util.List;
    
    fun asByteList(arg0: java.lang.Object): java.util.List;
    
    fun asCharList(arg0: java.lang.Object): java.util.List;
    
    fun asDoubleList(arg0: java.lang.Object): java.util.List;
    
    fun asFloatList(arg0: java.lang.Object): java.util.List;
    
    fun asIntList(arg0: java.lang.Object): java.util.List;
    
    fun asLongList(arg0: java.lang.Object): java.util.List;
    
    fun asShortList(arg0: java.lang.Object): java.util.List;
    
    fun representData(arg0: java.lang.Object): org.yaml.snakeyaml.nodes.Node;
}
automaton org.yaml.snakeyaml.representer.SafeRepresenter$RepresentSet (val arg0: org.yaml.snakeyaml.representer.SafeRepresenter) : org.yaml.snakeyaml.representer.SafeRepresenter$RepresentSet {
    val this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
    fun representData(arg0: java.lang.Object): org.yaml.snakeyaml.nodes.Node;
}
automaton org.yaml.snakeyaml.representer.SafeRepresenter$RepresentString (val arg0: org.yaml.snakeyaml.representer.SafeRepresenter) : org.yaml.snakeyaml.representer.SafeRepresenter$RepresentString {
    val this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
    fun representData(arg0: java.lang.Object): org.yaml.snakeyaml.nodes.Node;
}
automaton org.yaml.snakeyaml.representer.SafeRepresenter$RepresentUuid (val arg0: org.yaml.snakeyaml.representer.SafeRepresenter) : org.yaml.snakeyaml.representer.SafeRepresenter$RepresentUuid {
    val this$0: org.yaml.snakeyaml.representer.SafeRepresenter;
    fun representData(arg0: java.lang.Object): org.yaml.snakeyaml.nodes.Node;
}
automaton org.yaml.snakeyaml.emitter.ScalarAnalysis (val arg0: java.lang.String, val arg1: bool, val arg2: bool, val arg3: bool, val arg4: bool, val arg5: bool, val arg6: bool) : org.yaml.snakeyaml.emitter.ScalarAnalysis {
    val scalar: java.lang.String;
    val empty: bool;
    val multiline: bool;
    val allowFlowPlain: bool;
    val allowBlockPlain: bool;
    val allowSingleQuoted: bool;
    val allowBlock: bool;
    fun getScalar(): java.lang.String;
    
    fun isAllowBlock(): bool;
    
    fun isAllowBlockPlain(): bool;
    
    fun isAllowFlowPlain(): bool;
    
    fun isAllowSingleQuoted(): bool;
    
    fun isEmpty(): bool;
    
    fun isMultiline(): bool;
}
automaton org.yaml.snakeyaml.events.ScalarEvent (val arg0: java.lang.String, val arg1: java.lang.String, val arg2: org.yaml.snakeyaml.events.ImplicitTuple, val arg3: java.lang.String, val arg4: org.yaml.snakeyaml.error.Mark, val arg5: org.yaml.snakeyaml.error.Mark, val arg6: org.yaml.snakeyaml.DumperOptions$ScalarStyle) : org.yaml.snakeyaml.events.ScalarEvent {
    val tag: java.lang.String;
    val style: org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    val value: java.lang.String;
    val implicit: org.yaml.snakeyaml.events.ImplicitTuple;
    fun getArguments(): java.lang.String;
    
    fun getEventId(): org.yaml.snakeyaml.events.Event$ID;
    
    fun getImplicit(): org.yaml.snakeyaml.events.ImplicitTuple;
    
    fun getScalarStyle(): org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    
    fun getTag(): java.lang.String;
    
    fun getValue(): java.lang.String;
    
    fun isPlain(): bool;
}
automaton org.yaml.snakeyaml.nodes.ScalarNode (val arg0: org.yaml.snakeyaml.nodes.Tag, val arg1: java.lang.String, val arg2: org.yaml.snakeyaml.error.Mark, val arg3: org.yaml.snakeyaml.error.Mark, val arg4: org.yaml.snakeyaml.DumperOptions$ScalarStyle) : org.yaml.snakeyaml.nodes.ScalarNode {
    val style: org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    val value: java.lang.String;
    fun getNodeId(): org.yaml.snakeyaml.nodes.NodeId;
    
    fun getScalarStyle(): org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    
    fun getValue(): java.lang.String;
    
    fun isPlain(): bool;
    
    fun toString(): java.lang.String;
}
automaton org.yaml.snakeyaml.tokens.ScalarToken (val arg0: java.lang.String, val arg1: org.yaml.snakeyaml.error.Mark, val arg2: org.yaml.snakeyaml.error.Mark, val arg3: bool) : org.yaml.snakeyaml.tokens.ScalarToken {
    val value: java.lang.String;
    val plain: bool;
    val style: org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    fun getPlain(): bool;
    
    fun getStyle(): org.yaml.snakeyaml.DumperOptions$ScalarStyle;
    
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
    
    fun getValue(): java.lang.String;
}
automaton org.yaml.snakeyaml.scanner.Scanner : org.yaml.snakeyaml.scanner.Scanner {
    fun checkToken(arg0: array): bool;
    
    fun getToken(): org.yaml.snakeyaml.tokens.Token;
    
    fun peekToken(): org.yaml.snakeyaml.tokens.Token;
}
automaton org.yaml.snakeyaml.scanner.ScannerException (val arg0: java.lang.String, val arg1: org.yaml.snakeyaml.error.Mark, val arg2: java.lang.String, val arg3: org.yaml.snakeyaml.error.Mark, val arg4: java.lang.String) : org.yaml.snakeyaml.scanner.ScannerException {
    val serialVersionUID: long;
}
automaton org.yaml.snakeyaml.scanner.ScannerImpl (val arg0: org.yaml.snakeyaml.reader.StreamReader, val arg1: org.yaml.snakeyaml.LoaderOptions) : org.yaml.snakeyaml.scanner.ScannerImpl {
    val NOT_HEXA: java.util.regex.Pattern;
    val ESCAPE_REPLACEMENTS: java.util.Map;
    val ESCAPE_CODES: java.util.Map;
    val reader: org.yaml.snakeyaml.reader.StreamReader;
    val done: bool;
    val flowLevel: int;
    val tokens: java.util.List;
    val lastToken: org.yaml.snakeyaml.tokens.Token;
    val tokensTaken: int;
    val indent: int;
    val indents: org.yaml.snakeyaml.util.ArrayStack;
    val parseComments: bool;
    val loaderOptions: org.yaml.snakeyaml.LoaderOptions;
    val allowSimpleKey: bool;
    val possibleSimpleKeys: java.util.Map;
    fun addAllTokens(arg0: java.util.List): void {
        assigns lastToken;
    }
    
    fun addIndent(arg0: int): bool {
        assigns indent;
    }
    
    fun addToken(arg0: org.yaml.snakeyaml.tokens.Token): void {
        assigns lastToken;
    }
    
    fun addToken(arg0: int, arg1: org.yaml.snakeyaml.tokens.Token): void {
        assigns lastToken;
    }
    
    fun atEndOfPlain(): bool;
    
    fun checkBlockEntry(): bool;
    
    fun checkDirective(): bool;
    
    fun checkDocumentEnd(): bool;
    
    fun checkDocumentStart(): bool;
    
    fun checkKey(): bool;
    
    fun checkPlain(): bool;
    
    fun checkToken(arg0: array): bool {
        assigns allowSimpleKey;
        assigns lastToken;
        assigns indent;
        assigns done;
        assigns flowLevel;
    }
    
    fun checkValue(): bool;
    
    fun escapeChar(arg0: java.lang.String): java.lang.String;
    
    fun fetchAlias(): void {
        assigns allowSimpleKey;
        assigns lastToken;
    }
    
    fun fetchAnchor(): void {
        assigns allowSimpleKey;
        assigns lastToken;
    }
    
    fun fetchBlockEntry(): void {
        assigns allowSimpleKey;
        assigns indent;
        assigns lastToken;
    }
    
    fun fetchBlockScalar(arg0: char): void {
        assigns allowSimpleKey;
        assigns lastToken;
    }
    
    fun fetchDirective(): void {
        assigns allowSimpleKey;
        assigns indent;
        assigns lastToken;
    }
    
    fun fetchDocumentEnd(): void {
        assigns allowSimpleKey;
        assigns indent;
        assigns lastToken;
    }
    
    fun fetchDocumentIndicator(arg0: bool): void {
        assigns allowSimpleKey;
        assigns indent;
        assigns lastToken;
    }
    
    fun fetchDocumentStart(): void {
        assigns allowSimpleKey;
        assigns indent;
        assigns lastToken;
    }
    
    fun fetchDouble(): void {
        assigns allowSimpleKey;
        assigns lastToken;
    }
    
    fun fetchFlowCollectionEnd(arg0: bool): void {
        assigns flowLevel;
        assigns allowSimpleKey;
        assigns lastToken;
    }
    
    fun fetchFlowCollectionStart(arg0: bool): void {
        assigns flowLevel;
        assigns allowSimpleKey;
        assigns lastToken;
    }
    
    fun fetchFlowEntry(): void {
        assigns allowSimpleKey;
        assigns lastToken;
    }
    
    fun fetchFlowMappingEnd(): void {
        assigns flowLevel;
        assigns allowSimpleKey;
        assigns lastToken;
    }
    
    fun fetchFlowMappingStart(): void {
        assigns flowLevel;
        assigns allowSimpleKey;
        assigns lastToken;
    }
    
    fun fetchFlowScalar(arg0: char): void {
        assigns allowSimpleKey;
        assigns lastToken;
    }
    
    fun fetchFlowSequenceEnd(): void {
        assigns flowLevel;
        assigns allowSimpleKey;
        assigns lastToken;
    }
    
    fun fetchFlowSequenceStart(): void {
        assigns flowLevel;
        assigns allowSimpleKey;
        assigns lastToken;
    }
    
    fun fetchFolded(): void {
        assigns allowSimpleKey;
        assigns lastToken;
    }
    
    fun fetchKey(): void {
        assigns allowSimpleKey;
        assigns indent;
        assigns lastToken;
    }
    
    fun fetchLiteral(): void {
        assigns allowSimpleKey;
        assigns lastToken;
    }
    
    fun fetchMoreTokens(): void {
        assigns allowSimpleKey;
        assigns lastToken;
        assigns indent;
        assigns done;
        assigns flowLevel;
    }
    
    fun fetchPlain(): void {
        assigns allowSimpleKey;
        assigns lastToken;
    }
    
    fun fetchSingle(): void {
        assigns allowSimpleKey;
        assigns lastToken;
    }
    
    fun fetchStreamEnd(): void {
        assigns allowSimpleKey;
        assigns done;
        assigns indent;
        assigns lastToken;
    }
    
    fun fetchStreamStart(): void {
        assigns lastToken;
    }
    
    fun fetchTag(): void {
        assigns allowSimpleKey;
        assigns lastToken;
    }
    
    fun fetchValue(): void {
        assigns allowSimpleKey;
        assigns lastToken;
        assigns indent;
    }
    
    fun getToken(): org.yaml.snakeyaml.tokens.Token {
        assigns tokensTaken;
    }
    
    fun makeTokenList(arg0: array): java.util.List;
    
    fun needMoreTokens(): bool;
    
    fun nextPossibleSimpleKey(): int;
    
    fun peekToken(): org.yaml.snakeyaml.tokens.Token {
        assigns allowSimpleKey;
        assigns lastToken;
        assigns indent;
        assigns done;
        assigns flowLevel;
    }
    
    fun removePossibleSimpleKey(): void;
    
    fun savePossibleSimpleKey(): void;
    
    fun scanAnchor(arg0: bool): org.yaml.snakeyaml.tokens.Token;
    
    fun scanBlockScalar(arg0: char): java.util.List;
    
    fun scanBlockScalarBreaks(arg0: int): array<java.lang.Object>;
    
    fun scanBlockScalarIgnoredLine(arg0: org.yaml.snakeyaml.error.Mark): org.yaml.snakeyaml.tokens.CommentToken;
    
    fun scanBlockScalarIndentation(): array<java.lang.Object>;
    
    fun scanBlockScalarIndicators(arg0: org.yaml.snakeyaml.error.Mark): org.yaml.snakeyaml.scanner.ScannerImpl$Chomping;
    
    fun scanComment(arg0: org.yaml.snakeyaml.comments.CommentType): org.yaml.snakeyaml.tokens.CommentToken;
    
    fun scanDirective(): java.util.List;
    
    fun scanDirectiveIgnoredLine(arg0: org.yaml.snakeyaml.error.Mark): org.yaml.snakeyaml.tokens.CommentToken;
    
    fun scanDirectiveName(arg0: org.yaml.snakeyaml.error.Mark): java.lang.String;
    
    fun scanFlowScalar(arg0: char): org.yaml.snakeyaml.tokens.Token;
    
    fun scanFlowScalarBreaks(arg0: org.yaml.snakeyaml.error.Mark): java.lang.String;
    
    fun scanFlowScalarNonSpaces(arg0: bool, arg1: org.yaml.snakeyaml.error.Mark): java.lang.String;
    
    fun scanFlowScalarSpaces(arg0: org.yaml.snakeyaml.error.Mark): java.lang.String;
    
    fun scanLineBreak(): java.lang.String;
    
    fun scanPlain(): org.yaml.snakeyaml.tokens.Token {
        assigns allowSimpleKey;
    }
    
    fun scanPlainSpaces(): java.lang.String {
        assigns allowSimpleKey;
    }
    
    fun scanTag(): org.yaml.snakeyaml.tokens.Token;
    
    fun scanTagDirectiveHandle(arg0: org.yaml.snakeyaml.error.Mark): java.lang.String;
    
    fun scanTagDirectivePrefix(arg0: org.yaml.snakeyaml.error.Mark): java.lang.String;
    
    fun scanTagDirectiveValue(arg0: org.yaml.snakeyaml.error.Mark): java.util.List;
    
    fun scanTagHandle(arg0: java.lang.String, arg1: org.yaml.snakeyaml.error.Mark): java.lang.String;
    
    fun scanTagUri(arg0: java.lang.String, arg1: org.yaml.snakeyaml.error.Mark): java.lang.String;
    
    fun scanToNextToken(): void {
        assigns allowSimpleKey;
        assigns lastToken;
    }
    
    fun scanUriEscapes(arg0: java.lang.String, arg1: org.yaml.snakeyaml.error.Mark): java.lang.String;
    
    fun scanYamlDirectiveNumber(arg0: org.yaml.snakeyaml.error.Mark): int;
    
    fun scanYamlDirectiveValue(arg0: org.yaml.snakeyaml.error.Mark): java.util.List;
    
    fun stalePossibleSimpleKeys(): void;
    
    fun `static-constructor`(): void {
        assigns NOT_HEXA;
        assigns ESCAPE_REPLACEMENTS;
        assigns ESCAPE_CODES;
    }
    
    fun unwindIndent(arg0: int): void {
        assigns indent;
        assigns lastToken;
    }
}
automaton org.yaml.snakeyaml.scanner.ScannerImpl$Chomping (val arg0: bool, val arg1: int) : org.yaml.snakeyaml.scanner.ScannerImpl$Chomping {
    val value: bool;
    val increment: int;
    fun chompTailIsNotFalse(): bool;
    
    fun chompTailIsTrue(): bool;
    
    fun getIncrement(): int;
}
automaton org.yaml.snakeyaml.events.SequenceEndEvent (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.events.SequenceEndEvent {
    fun getEventId(): org.yaml.snakeyaml.events.Event$ID;
}
automaton org.yaml.snakeyaml.nodes.SequenceNode (val arg0: org.yaml.snakeyaml.nodes.Tag, val arg1: bool, val arg2: java.util.List, val arg3: org.yaml.snakeyaml.error.Mark, val arg4: org.yaml.snakeyaml.error.Mark, val arg5: org.yaml.snakeyaml.DumperOptions$FlowStyle) : org.yaml.snakeyaml.nodes.SequenceNode {
    val value: java.util.List;
    fun getNodeId(): org.yaml.snakeyaml.nodes.NodeId;
    
    fun getValue(): java.util.List;
    
    fun setListType(arg0: java.lang.Class): void;
    
    fun toString(): java.lang.String;
}
automaton org.yaml.snakeyaml.events.SequenceStartEvent (val arg0: java.lang.String, val arg1: java.lang.String, val arg2: bool, val arg3: org.yaml.snakeyaml.error.Mark, val arg4: org.yaml.snakeyaml.error.Mark, val arg5: org.yaml.snakeyaml.DumperOptions$FlowStyle) : org.yaml.snakeyaml.events.SequenceStartEvent {
    fun getEventId(): org.yaml.snakeyaml.events.Event$ID;
}
automaton org.yaml.snakeyaml.serializer.Serializer (val arg0: org.yaml.snakeyaml.emitter.Emitable, val arg1: org.yaml.snakeyaml.resolver.Resolver, val arg2: org.yaml.snakeyaml.DumperOptions, val arg3: org.yaml.snakeyaml.nodes.Tag) : org.yaml.snakeyaml.serializer.Serializer {
    val emitter: org.yaml.snakeyaml.emitter.Emitable;
    val resolver: org.yaml.snakeyaml.resolver.Resolver;
    val explicitStart: bool;
    val explicitEnd: bool;
    val useVersion: org.yaml.snakeyaml.DumperOptions$Version;
    val useTags: java.util.Map;
    val serializedNodes: java.util.Set;
    val anchors: java.util.Map;
    val anchorGenerator: org.yaml.snakeyaml.serializer.AnchorGenerator;
    val closed: bool;
    val explicitRoot: org.yaml.snakeyaml.nodes.Tag;
    fun anchorNode(arg0: org.yaml.snakeyaml.nodes.Node): void;
    
    fun close(): void {
        assigns closed;
    }
    
    fun open(): void {
        assigns closed;
    }
    
    fun serialize(arg0: org.yaml.snakeyaml.nodes.Node): void {
        assigns arg0.tag;
    }
    
    fun serializeComments(arg0: java.util.List): void;
    
    fun serializeNode(arg0: org.yaml.snakeyaml.nodes.Node, arg1: org.yaml.snakeyaml.nodes.Node): void;
}
automaton org.yaml.snakeyaml.serializer.Serializer$1 : org.yaml.snakeyaml.serializer.Serializer$1 {
    val $SwitchMap$org$yaml$snakeyaml$nodes$NodeId: array<int>;
    fun `static-constructor`(): void {
        assigns $SwitchMap$org$yaml$snakeyaml$nodes$NodeId;
    }
}
automaton org.yaml.snakeyaml.serializer.SerializerException (val arg0: java.lang.String) : org.yaml.snakeyaml.serializer.SerializerException {
    val serialVersionUID: long;
}
automaton org.yaml.snakeyaml.scanner.SimpleKey (val arg0: int, val arg1: bool, val arg2: int, val arg3: int, val arg4: int, val arg5: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.scanner.SimpleKey {
    val tokenNumber: int;
    val required: bool;
    val index: int;
    val line: int;
    val column: int;
    val mark: org.yaml.snakeyaml.error.Mark;
    fun getColumn(): int;
    
    fun getIndex(): int;
    
    fun getLine(): int;
    
    fun getMark(): org.yaml.snakeyaml.error.Mark;
    
    fun getTokenNumber(): int;
    
    fun isRequired(): bool;
    
    fun toString(): java.lang.String;
}
automaton org.yaml.snakeyaml.events.StreamEndEvent (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.events.StreamEndEvent {
    fun getEventId(): org.yaml.snakeyaml.events.Event$ID;
}
automaton org.yaml.snakeyaml.tokens.StreamEndToken (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.StreamEndToken {
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
}
automaton org.yaml.snakeyaml.reader.StreamReader (val arg0: java.lang.String) : org.yaml.snakeyaml.reader.StreamReader {
    val name: java.lang.String;
    val stream: java.io.Reader;
    val dataWindow: array<int>;
    val dataLength: int;
    val pointer: int;
    val eof: bool;
    val index: int;
    val line: int;
    val column: int;
    val buffer: array<char>;
    val BUFFER_SIZE: int;
    fun ensureEnoughData(): bool {
        assigns dataWindow;
        assigns eof;
        assigns dataLength;
        assigns pointer;
    }
    
    fun ensureEnoughData(arg0: int): bool {
        assigns dataWindow;
        assigns eof;
        assigns dataLength;
        assigns pointer;
    }
    
    fun forward(): void {
        assigns pointer;
        assigns index;
        assigns line;
        assigns column;
        assigns dataWindow;
        assigns eof;
        assigns dataLength;
    }
    
    fun forward(arg0: int): void {
        assigns pointer;
        assigns index;
        assigns line;
        assigns column;
        assigns dataWindow;
        assigns eof;
        assigns dataLength;
    }
    
    fun getColumn(): int;
    
    fun getIndex(): int;
    
    fun getLine(): int;
    
    fun getMark(): org.yaml.snakeyaml.error.Mark;
    
    fun isPrintable(arg0: java.lang.String): bool;
    
    fun isPrintable(arg0: int): bool;
    
    fun peek(): int {
        assigns dataWindow;
        assigns eof;
        assigns dataLength;
        assigns pointer;
    }
    
    fun peek(arg0: int): int {
        assigns dataWindow;
        assigns eof;
        assigns dataLength;
        assigns pointer;
    }
    
    fun prefix(arg0: int): java.lang.String {
        assigns dataWindow;
        assigns eof;
        assigns dataLength;
        assigns pointer;
    }
    
    fun prefixForward(arg0: int): java.lang.String {
        assigns pointer;
        assigns index;
        assigns column;
        assigns dataWindow;
        assigns eof;
        assigns dataLength;
    }
    
    fun update(): void {
        assigns dataWindow;
        assigns eof;
        assigns dataLength;
        assigns pointer;
    }
}
automaton org.yaml.snakeyaml.events.StreamStartEvent (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.events.StreamStartEvent {
    fun getEventId(): org.yaml.snakeyaml.events.Event$ID;
}
automaton org.yaml.snakeyaml.tokens.StreamStartToken (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.StreamStartToken {
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
}
automaton org.yaml.snakeyaml.nodes.Tag (val arg0: java.lang.String) : org.yaml.snakeyaml.nodes.Tag {
    val PREFIX: java.lang.String;
    val YAML: org.yaml.snakeyaml.nodes.Tag;
    val MERGE: org.yaml.snakeyaml.nodes.Tag;
    val SET: org.yaml.snakeyaml.nodes.Tag;
    val PAIRS: org.yaml.snakeyaml.nodes.Tag;
    val OMAP: org.yaml.snakeyaml.nodes.Tag;
    val BINARY: org.yaml.snakeyaml.nodes.Tag;
    val INT: org.yaml.snakeyaml.nodes.Tag;
    val FLOAT: org.yaml.snakeyaml.nodes.Tag;
    val TIMESTAMP: org.yaml.snakeyaml.nodes.Tag;
    val BOOL: org.yaml.snakeyaml.nodes.Tag;
    val NULL: org.yaml.snakeyaml.nodes.Tag;
    val STR: org.yaml.snakeyaml.nodes.Tag;
    val SEQ: org.yaml.snakeyaml.nodes.Tag;
    val MAP: org.yaml.snakeyaml.nodes.Tag;
    val standardTags: java.util.Set;
    val COMMENT: org.yaml.snakeyaml.nodes.Tag;
    val COMPATIBILITY_MAP: java.util.Map;
    val value: java.lang.String;
    val secondary: bool;
    fun equals(arg0: java.lang.Object): bool;
    
    fun getClassName(): java.lang.String;
    
    fun getValue(): java.lang.String;
    
    fun hashCode(): int;
    
    fun isCompatible(arg0: java.lang.Class): bool;
    
    fun isCustomGlobal(): bool;
    
    fun isSecondary(): bool;
    
    fun matches(arg0: java.lang.Class): bool;
    
    fun startsWith(arg0: java.lang.String): bool;
    
    fun `static-constructor`(): void {
        assigns YAML;
        assigns MERGE;
        assigns SET;
        assigns PAIRS;
        assigns OMAP;
        assigns BINARY;
        assigns INT;
        assigns FLOAT;
        assigns TIMESTAMP;
        assigns BOOL;
        assigns NULL;
        assigns STR;
        assigns SEQ;
        assigns MAP;
        assigns standardTags;
        assigns COMMENT;
        assigns COMPATIBILITY_MAP;
    }
    
    fun toString(): java.lang.String;
}
automaton org.yaml.snakeyaml.inspector.TagInspector : org.yaml.snakeyaml.inspector.TagInspector {
    fun isGlobalTagAllowed(arg0: org.yaml.snakeyaml.nodes.Tag): bool;
}
automaton org.yaml.snakeyaml.tokens.TagToken (val arg0: org.yaml.snakeyaml.tokens.TagTuple, val arg1: org.yaml.snakeyaml.error.Mark, val arg2: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.TagToken {
    val value: org.yaml.snakeyaml.tokens.TagTuple;
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
    
    fun getValue(): org.yaml.snakeyaml.tokens.TagTuple;
}
automaton org.yaml.snakeyaml.tokens.TagTuple (val arg0: java.lang.String, val arg1: java.lang.String) : org.yaml.snakeyaml.tokens.TagTuple {
    val handle: java.lang.String;
    val suffix: java.lang.String;
    fun getHandle(): java.lang.String;
    
    fun getSuffix(): java.lang.String;
}
automaton org.yaml.snakeyaml.tokens.Token (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.Token {
    val startMark: org.yaml.snakeyaml.error.Mark;
    val endMark: org.yaml.snakeyaml.error.Mark;
    fun getEndMark(): org.yaml.snakeyaml.error.Mark;
    
    fun getStartMark(): org.yaml.snakeyaml.error.Mark;
    
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
}
automaton org.yaml.snakeyaml.tokens.Token$ID (val arg0: java.lang.String, val arg1: int, val arg2: java.lang.String) : org.yaml.snakeyaml.tokens.Token$ID {
    val Alias: org.yaml.snakeyaml.tokens.Token$ID;
    val Anchor: org.yaml.snakeyaml.tokens.Token$ID;
    val BlockEnd: org.yaml.snakeyaml.tokens.Token$ID;
    val BlockEntry: org.yaml.snakeyaml.tokens.Token$ID;
    val BlockMappingStart: org.yaml.snakeyaml.tokens.Token$ID;
    val BlockSequenceStart: org.yaml.snakeyaml.tokens.Token$ID;
    val Directive: org.yaml.snakeyaml.tokens.Token$ID;
    val DocumentEnd: org.yaml.snakeyaml.tokens.Token$ID;
    val DocumentStart: org.yaml.snakeyaml.tokens.Token$ID;
    val FlowEntry: org.yaml.snakeyaml.tokens.Token$ID;
    val FlowMappingEnd: org.yaml.snakeyaml.tokens.Token$ID;
    val FlowMappingStart: org.yaml.snakeyaml.tokens.Token$ID;
    val FlowSequenceEnd: org.yaml.snakeyaml.tokens.Token$ID;
    val FlowSequenceStart: org.yaml.snakeyaml.tokens.Token$ID;
    val Key: org.yaml.snakeyaml.tokens.Token$ID;
    val Scalar: org.yaml.snakeyaml.tokens.Token$ID;
    val StreamEnd: org.yaml.snakeyaml.tokens.Token$ID;
    val StreamStart: org.yaml.snakeyaml.tokens.Token$ID;
    val Tag: org.yaml.snakeyaml.tokens.Token$ID;
    val Value: org.yaml.snakeyaml.tokens.Token$ID;
    val Whitespace: org.yaml.snakeyaml.tokens.Token$ID;
    val Comment: org.yaml.snakeyaml.tokens.Token$ID;
    val Error: org.yaml.snakeyaml.tokens.Token$ID;
    val description: java.lang.String;
    val $VALUES: array<org.yaml.snakeyaml.tokens.Token$ID>;
    fun `static-constructor`(): void {
        assigns Alias;
        assigns Anchor;
        assigns BlockEnd;
        assigns BlockEntry;
        assigns BlockMappingStart;
        assigns BlockSequenceStart;
        assigns Directive;
        assigns DocumentEnd;
        assigns DocumentStart;
        assigns FlowEntry;
        assigns FlowMappingEnd;
        assigns FlowMappingStart;
        assigns FlowSequenceEnd;
        assigns FlowSequenceStart;
        assigns Key;
        assigns Scalar;
        assigns StreamEnd;
        assigns StreamStart;
        assigns Tag;
        assigns Value;
        assigns Whitespace;
        assigns Comment;
        assigns Error;
        assigns $VALUES;
    }
    
    fun toString(): java.lang.String;
    
    fun valueOf(arg0: java.lang.String): org.yaml.snakeyaml.tokens.Token$ID;
    
    fun values(): array<org.yaml.snakeyaml.tokens.Token$ID>;
}
automaton org.yaml.snakeyaml.inspector.TrustedPrefixesTagInspector (val arg0: java.util.List) : org.yaml.snakeyaml.inspector.TrustedPrefixesTagInspector {
    val trustedList: java.util.List;
    fun isGlobalTagAllowed(arg0: org.yaml.snakeyaml.nodes.Tag): bool;
}
automaton org.yaml.snakeyaml.inspector.TrustedTagInspector : org.yaml.snakeyaml.inspector.TrustedTagInspector {
    fun isGlobalTagAllowed(arg0: org.yaml.snakeyaml.nodes.Tag): bool;
}
automaton org.yaml.snakeyaml.TypeDescription (val arg0: java.lang.Class, val arg1: org.yaml.snakeyaml.nodes.Tag) : org.yaml.snakeyaml.TypeDescription {
    val log: org.yaml.snakeyaml.internal.Logger;
    val `type`: java.lang.Class;
    val impl: java.lang.Class;
    val tag: org.yaml.snakeyaml.nodes.Tag;
    val dumpProperties: java.util.Set;
    val propertyUtils: org.yaml.snakeyaml.introspector.PropertyUtils;
    val delegatesChecked: bool;
    val properties: java.util.Map;
    val excludes: java.util.Set;
    val includes: array<java.lang.String>;
    val beanAccess: org.yaml.snakeyaml.introspector.BeanAccess;
    fun addPropertyParameters(arg0: java.lang.String, arg1: array): void {
        assigns properties;
    }
    
    fun checkDelegates(): void {
        assigns delegatesChecked;
    }
    
    fun discoverProperty(arg0: java.lang.String): org.yaml.snakeyaml.introspector.Property;
    
    fun finalizeConstruction(arg0: java.lang.Object): java.lang.Object;
    
    fun getProperties(): java.util.Set {
        assigns dumpProperties;
        assigns delegatesChecked;
    }
    
    fun getProperty(arg0: java.lang.String): org.yaml.snakeyaml.introspector.Property {
        assigns delegatesChecked;
    }
    
    fun getTag(): org.yaml.snakeyaml.nodes.Tag;
    
    fun getType(): java.lang.Class;
    
    fun newInstance(arg0: org.yaml.snakeyaml.nodes.Node): java.lang.Object {
        assigns impl;
    }
    
    fun newInstance(arg0: java.lang.String, arg1: org.yaml.snakeyaml.nodes.Node): java.lang.Object;
    
    fun putListPropertyType(arg0: java.lang.String, arg1: java.lang.Class): void {
        assigns properties;
    }
    
    fun putMapPropertyType(arg0: java.lang.String, arg1: java.lang.Class, arg2: java.lang.Class): void {
        assigns properties;
    }
    
    fun setExcludes(arg0: array): void {
        assigns excludes;
    }
    
    fun setIncludes(arg0: array): void {
        assigns includes;
    }
    
    fun setProperty(arg0: java.lang.Object, arg1: java.lang.String, arg2: java.lang.Object): bool;
    
    fun setPropertyUtils(arg0: org.yaml.snakeyaml.introspector.PropertyUtils): void {
        assigns propertyUtils;
    }
    
    fun setupPropertyType(arg0: java.lang.String, arg1: org.yaml.snakeyaml.nodes.Node): bool;
    
    fun `static-constructor`(): void {
        assigns log;
    }
    
    fun substituteProperty(arg0: java.lang.String, arg1: java.lang.Class, arg2: java.lang.String, arg3: java.lang.String, arg4: array): void {
        assigns properties;
    }
    
    fun substituteProperty(arg0: org.yaml.snakeyaml.introspector.PropertySubstitute): void {
        assigns properties;
        assigns arg0.targetType;
        assigns arg0.field;
        assigns arg0.read;
        assigns arg0.filler;
        assigns arg0.write;
    }
    
    fun toString(): java.lang.String;
}
automaton org.yaml.snakeyaml.inspector.UnTrustedTagInspector : org.yaml.snakeyaml.inspector.UnTrustedTagInspector {
    fun isGlobalTagAllowed(arg0: org.yaml.snakeyaml.nodes.Tag): bool;
}
automaton org.yaml.snakeyaml.external.com.google.gdata.util.common.base.UnicodeEscaper : org.yaml.snakeyaml.external.com.google.gdata.util.common.base.UnicodeEscaper {
    val DEST_PAD: int;
    val DEST_TL: java.lang.ThreadLocal;
    val $assertionsDisabled: bool;
    fun codePointAt(arg0: java.lang.CharSequence, arg1: int, arg2: int): int;
    
    fun escape(arg0: int): array<char>;
    
    fun escape(arg0: java.lang.String): java.lang.String;
    
    fun escape(arg0: java.lang.Appendable): java.lang.Appendable;
    
    fun escapeSlow(arg0: java.lang.String, arg1: int): java.lang.String;
    
    fun growBuffer(arg0: array, arg1: int, arg2: int): array<char>;
    
    fun nextEscapeIndex(arg0: java.lang.CharSequence, arg1: int, arg2: int): int;
    
    fun `static-constructor`(): void {
        assigns $assertionsDisabled;
        assigns DEST_TL;
    }
}
automaton org.yaml.snakeyaml.external.com.google.gdata.util.common.base.UnicodeEscaper$1 (val arg0: org.yaml.snakeyaml.external.com.google.gdata.util.common.base.UnicodeEscaper, val arg1: java.lang.Appendable) : org.yaml.snakeyaml.external.com.google.gdata.util.common.base.UnicodeEscaper$1 {
    val pendingHighSurrogate: int;
    val decodedChars: array<char>;
    val val$out: java.lang.Appendable;
    val this$0: org.yaml.snakeyaml.external.com.google.gdata.util.common.base.UnicodeEscaper;
    fun append(arg0: java.lang.CharSequence): java.lang.Appendable {
        assigns pendingHighSurrogate;
    }
    
    fun append(arg0: java.lang.CharSequence, arg1: int, arg2: int): java.lang.Appendable {
        assigns pendingHighSurrogate;
    }
    
    fun append(arg0: char): java.lang.Appendable;
    
    fun outputChars(arg0: array, arg1: int): void;
}
automaton org.yaml.snakeyaml.external.com.google.gdata.util.common.base.UnicodeEscaper$2 : org.yaml.snakeyaml.external.com.google.gdata.util.common.base.UnicodeEscaper$2 {
    fun initialValue(): array<char>;
    
    fun initialValue(): java.lang.Object;
}
automaton org.yaml.snakeyaml.reader.UnicodeReader (val arg0: java.io.InputStream) : org.yaml.snakeyaml.reader.UnicodeReader {
    val UTF8: java.nio.charset.Charset;
    val UTF16BE: java.nio.charset.Charset;
    val UTF16LE: java.nio.charset.Charset;
    val internalIn: java.io.PushbackInputStream;
    val internalIn2: java.io.InputStreamReader;
    val BOM_SIZE: int;
    fun close(): void {
        assigns internalIn2;
    }
    
    fun getEncoding(): java.lang.String;
    
    fun init(): void {
        assigns internalIn2;
    }
    
    fun read(arg0: array, arg1: int, arg2: int): int {
        assigns internalIn2;
    }
    
    fun `static-constructor`(): void {
        assigns UTF8;
        assigns UTF16BE;
        assigns UTF16LE;
    }
}
automaton org.yaml.snakeyaml.util.UriEncoder : org.yaml.snakeyaml.util.UriEncoder {
    val UTF8Decoder: java.nio.charset.CharsetDecoder;
    val SAFE_CHARS: java.lang.String;
    val escaper: org.yaml.snakeyaml.external.com.google.gdata.util.common.base.Escaper;
    fun decode(arg0: java.nio.ByteBuffer): java.lang.String;
    
    fun decode(arg0: java.lang.String): java.lang.String;
    
    fun encode(arg0: java.lang.String): java.lang.String;
    
    fun `static-constructor`(): void {
        assigns UTF8Decoder;
        assigns escaper;
    }
}
automaton org.yaml.snakeyaml.tokens.ValueToken (val arg0: org.yaml.snakeyaml.error.Mark, val arg1: org.yaml.snakeyaml.error.Mark) : org.yaml.snakeyaml.tokens.ValueToken {
    fun getTokenId(): org.yaml.snakeyaml.tokens.Token$ID;
}
automaton org.yaml.snakeyaml.parser.VersionTagsTuple (val arg0: org.yaml.snakeyaml.DumperOptions$Version, val arg1: java.util.Map) : org.yaml.snakeyaml.parser.VersionTagsTuple {
    val `version`: org.yaml.snakeyaml.DumperOptions$Version;
    val tags: java.util.Map;
    fun getTags(): java.util.Map;
    
    fun getVersion(): org.yaml.snakeyaml.DumperOptions$Version;
    
    fun toString(): java.lang.String;
}
automaton org.yaml.snakeyaml.error.YAMLException (val arg0: java.lang.String) : org.yaml.snakeyaml.error.YAMLException {
    val serialVersionUID: long;
}
automaton org.yaml.snakeyaml.Yaml : org.yaml.snakeyaml.Yaml {
    val resolver: org.yaml.snakeyaml.resolver.Resolver;
    val name: java.lang.String;
    val `constructor`: `org.yaml.snakeyaml.constructor.BaseConstructor`;
    val representer: org.yaml.snakeyaml.representer.Representer;
    val dumperOptions: org.yaml.snakeyaml.DumperOptions;
    val loadingConfig: org.yaml.snakeyaml.LoaderOptions;
    fun addImplicitResolver(arg0: org.yaml.snakeyaml.nodes.Tag, arg1: java.util.regex.Pattern, arg2: java.lang.String): void;
    
    fun addImplicitResolver(arg0: org.yaml.snakeyaml.nodes.Tag, arg1: java.util.regex.Pattern, arg2: java.lang.String, arg3: int): void;
    
    fun addTypeDescription(arg0: org.yaml.snakeyaml.TypeDescription): void {
        assigns arg0.propertyUtils;
    }
    
    fun compose(arg0: java.io.Reader): org.yaml.snakeyaml.nodes.Node;
    
    fun composeAll(arg0: java.io.Reader): java.lang.Iterable;
    
    fun dump(arg0: java.lang.Object): java.lang.String;
    
    fun dump(arg0: java.lang.Object, arg1: java.io.Writer): void;
    
    fun dumpAll(arg0: java.util.Iterator): java.lang.String;
    
    fun dumpAll(arg0: java.util.Iterator, arg1: java.io.Writer): void;
    
    fun dumpAll(arg0: java.util.Iterator, arg1: java.io.Writer, arg2: org.yaml.snakeyaml.nodes.Tag): void;
    
    fun dumpAs(arg0: java.lang.Object, arg1: org.yaml.snakeyaml.nodes.Tag, arg2: org.yaml.snakeyaml.DumperOptions$FlowStyle): java.lang.String;
    
    fun dumpAsMap(arg0: java.lang.Object): java.lang.String;
    
    fun getName(): java.lang.String;
    
    fun initDumperOptions(arg0: org.yaml.snakeyaml.representer.Representer): org.yaml.snakeyaml.DumperOptions {
        assigns arg0;
    }
    
    fun load(arg0: java.lang.String): java.lang.Object;
    
    fun load(arg0: java.io.InputStream): java.lang.Object;
    
    fun load(arg0: java.io.Reader): java.lang.Object;
    
    fun loadAll(arg0: java.io.Reader): java.lang.Iterable;
    
    fun loadAll(arg0: java.lang.String): java.lang.Iterable;
    
    fun loadAll(arg0: java.io.InputStream): java.lang.Iterable;
    
    fun loadAs(arg0: java.io.Reader, arg1: java.lang.Class): java.lang.Object;
    
    fun loadAs(arg0: java.lang.String, arg1: java.lang.Class): java.lang.Object;
    
    fun loadAs(arg0: java.io.InputStream, arg1: java.lang.Class): java.lang.Object;
    
    fun loadFromReader(arg0: org.yaml.snakeyaml.reader.StreamReader, arg1: java.lang.Class): java.lang.Object;
    
    fun parse(arg0: java.io.Reader): java.lang.Iterable;
    
    fun represent(arg0: java.lang.Object): org.yaml.snakeyaml.nodes.Node;
    
    fun serialize(arg0: org.yaml.snakeyaml.nodes.Node, arg1: java.io.Writer): void {
        assigns arg0.tag;
    }
    
    fun serialize(arg0: org.yaml.snakeyaml.nodes.Node): java.util.List {
        assigns arg0.tag;
    }
    
    fun setBeanAccess(arg0: org.yaml.snakeyaml.introspector.BeanAccess): void;
    
    fun setName(arg0: java.lang.String): void {
        assigns name;
    }
    
    fun toString(): java.lang.String;
}
automaton org.yaml.snakeyaml.Yaml$1 (val arg0: org.yaml.snakeyaml.Yaml) : org.yaml.snakeyaml.Yaml$1 {
    val this$0: org.yaml.snakeyaml.Yaml;
    fun hasNext(): bool;
    
    fun next(): java.lang.Object;
    
    fun remove(): void;
}
automaton org.yaml.snakeyaml.Yaml$2 (val arg0: org.yaml.snakeyaml.Yaml, val arg1: org.yaml.snakeyaml.composer.Composer) : org.yaml.snakeyaml.Yaml$2 {
    val val$composer: org.yaml.snakeyaml.composer.Composer;
    val this$0: org.yaml.snakeyaml.Yaml;
    fun hasNext(): bool;
    
    fun next(): org.yaml.snakeyaml.nodes.Node;
    
    fun next(): java.lang.Object;
    
    fun remove(): void;
}
automaton org.yaml.snakeyaml.Yaml$3 (val arg0: org.yaml.snakeyaml.Yaml, val arg1: org.yaml.snakeyaml.parser.Parser) : org.yaml.snakeyaml.Yaml$3 {
    val val$parser: org.yaml.snakeyaml.parser.Parser;
    val this$0: org.yaml.snakeyaml.Yaml;
    fun hasNext(): bool;
    
    fun next(): org.yaml.snakeyaml.events.Event;
    
    fun next(): java.lang.Object;
    
    fun remove(): void;
}
automaton org.yaml.snakeyaml.Yaml$EventIterable (val arg0: java.util.Iterator) : org.yaml.snakeyaml.Yaml$EventIterable {
    val iterator: java.util.Iterator;
    fun iterator(): java.util.Iterator;
}
automaton org.yaml.snakeyaml.Yaml$NodeIterable (val arg0: java.util.Iterator) : org.yaml.snakeyaml.Yaml$NodeIterable {
    val iterator: java.util.Iterator;
    fun iterator(): java.util.Iterator;
}
automaton org.yaml.snakeyaml.Yaml$SilentEmitter : org.yaml.snakeyaml.Yaml$SilentEmitter {
    val events: java.util.List;
    fun emit(arg0: org.yaml.snakeyaml.events.Event): void;
    
    fun getEvents(): java.util.List;
}
automaton org.yaml.snakeyaml.Yaml$YamlIterable (val arg0: java.util.Iterator) : org.yaml.snakeyaml.Yaml$YamlIterable {
    val iterator: java.util.Iterator;
    fun iterator(): java.util.Iterator;
}
automaton `module-info` : `module-info` {
}

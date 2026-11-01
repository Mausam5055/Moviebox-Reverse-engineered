package org.mvel2;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import org.mvel2.ast.Function;
import org.mvel2.ast.LineLabel;
import org.mvel2.ast.Proto;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.compiler.CompiledExpression;
import org.mvel2.util.MethodStub;
import org.mvel2.util.j;
import org.mvel2.util.p;

/* JADX INFO: loaded from: classes7.dex */
public class ParserContext implements Serializable {
    private boolean blockSymbols;
    private boolean compiled;
    private transient Map<String, CompiledExpression> compiledExpressionCache;
    private boolean debugSymbols;
    private transient List<c> errorList;
    private Object evaluationContext;
    private boolean executableCodeReached;
    private boolean fatalError;
    private boolean functionContext;
    private HashMap<String, Function> globalFunctions;
    private boolean indexAllocation;
    private ArrayList<String> indexedInputs;
    private ArrayList<String> indexedLocals;
    private Map<String, Class> inputs;
    private LineLabel lastLineLabel;
    private transient Type[] lastTypeParameters;
    private int lineCount;
    private int lineOffset;
    private boolean optimizationMode;
    private ParserContext parent;
    private ParserConfiguration parserConfiguration;
    private boolean retainParserState;
    private transient Map<String, Class> returnTypeCache;
    private transient org.mvel2.compiler.b rootParser;
    private String sourceFile;
    private transient Map<String, j.b> sourceLineLookups;
    private boolean strictTypeEnforcement;
    private boolean strongTyping;
    private transient HashMap<String, Map<String, Type>> typeParameters;
    private ArrayList<Set<String>> variableVisibility;
    private HashMap<String, Class> variables;
    protected boolean variablesEscape;
    private transient Map<String, Set<Integer>> visitedLines;

    public ParserContext() {
        this.lineCount = 1;
        this.functionContext = false;
        this.compiled = false;
        this.strictTypeEnforcement = false;
        this.strongTyping = false;
        this.optimizationMode = false;
        this.fatalError = false;
        this.retainParserState = false;
        this.debugSymbols = false;
        this.blockSymbols = false;
        this.executableCodeReached = false;
        this.indexAllocation = false;
        this.variablesEscape = false;
        this.parserConfiguration = new ParserConfiguration();
    }

    public ParserContext(Map<String, Object> map, Map<String, k10.b> map2, String str) {
        this.lineCount = 1;
        this.functionContext = false;
        this.compiled = false;
        this.strictTypeEnforcement = false;
        this.strongTyping = false;
        this.optimizationMode = false;
        this.fatalError = false;
        this.retainParserState = false;
        this.debugSymbols = false;
        this.blockSymbols = false;
        this.executableCodeReached = false;
        this.indexAllocation = false;
        this.variablesEscape = false;
        this.sourceFile = str;
        this.parserConfiguration = new ParserConfiguration(map, map2);
    }

    public ParserContext(ParserConfiguration parserConfiguration) {
        this.lineCount = 1;
        this.functionContext = false;
        this.compiled = false;
        this.strictTypeEnforcement = false;
        this.strongTyping = false;
        this.optimizationMode = false;
        this.fatalError = false;
        this.retainParserState = false;
        this.debugSymbols = false;
        this.blockSymbols = false;
        this.executableCodeReached = false;
        this.indexAllocation = false;
        this.variablesEscape = false;
        this.parserConfiguration = parserConfiguration;
    }

    public ParserContext(ParserConfiguration parserConfiguration, Object obj) {
        this(parserConfiguration);
        this.evaluationContext = obj;
    }

    public ParserContext(ParserConfiguration parserConfiguration, ParserContext parserContext, boolean z10) {
        this(parserConfiguration);
        this.parent = parserContext;
        this.functionContext = z10;
    }

    public ParserContext(org.mvel2.compiler.b bVar) {
        this();
        this.rootParser = bVar;
    }

    public ParserContext(boolean z10) {
        this();
        this.debugSymbols = z10;
    }

    public static ParserContext create() {
        return new ParserContext();
    }

    private void initIndexedVariables() {
        if (this.indexedInputs == null) {
            this.indexedInputs = new ArrayList<>();
        }
        if (this.indexedLocals == null) {
            this.indexedLocals = new ArrayList<>();
        }
    }

    private void initVariableVisibility() {
        if (this.variableVisibility == null) {
            this.variableVisibility = new ArrayList<>();
        }
    }

    public void addError(c cVar) {
        List<c> list = this.errorList;
        if (list == null) {
            this.errorList = new ArrayList();
        } else {
            for (c cVar2 : list) {
                if (cVar2.f().equals(cVar.f()) && cVar2.b() == cVar.b() && cVar2.e() == cVar.e()) {
                    return;
                }
            }
        }
        if (cVar.g()) {
            this.fatalError = true;
        }
        this.errorList.add(cVar);
    }

    public void addImport(Class cls) {
        addImport(cls.getSimpleName(), cls);
    }

    public void addImport(String str, Class cls) {
        this.parserConfiguration.addImport(str, cls);
    }

    public void addImport(String str, Method method) {
        addImport(str, new MethodStub(method));
    }

    public void addImport(String str, MethodStub methodStub) {
        this.parserConfiguration.addImport(str, methodStub);
    }

    public void addImport(Proto proto) {
        this.parserConfiguration.addImport(proto.getName(), proto);
    }

    public void addIndexedInput(String str) {
        initIndexedVariables();
        if (this.indexedInputs.contains(str)) {
            return;
        }
        this.indexedInputs.add(str);
    }

    public void addIndexedInput(String[] strArr) {
        initIndexedVariables();
        for (String str : strArr) {
            if (!this.indexedInputs.contains(str)) {
                this.indexedInputs.add(str);
            }
        }
    }

    public void addIndexedInputs(Collection<String> collection) {
        if (collection == null) {
            return;
        }
        initIndexedVariables();
        for (String str : collection) {
            if (!this.indexedInputs.contains(str)) {
                this.indexedInputs.add(str);
            }
        }
    }

    public void addIndexedLocals(Collection<String> collection) {
        if (collection == null) {
            return;
        }
        initIndexedVariables();
        for (String str : collection) {
            if (!this.indexedLocals.contains(str)) {
                this.indexedLocals.add(str);
            }
        }
    }

    public void addIndexedLocals(String[] strArr) {
        initIndexedVariables();
        for (String str : this.indexedLocals) {
            if (!this.indexedLocals.contains(str)) {
                this.indexedLocals.add(str);
            }
        }
    }

    public void addInput(String str, Class cls) {
        if (this.inputs == null) {
            this.inputs = new LinkedHashMap();
        }
        if (this.inputs.containsKey(str)) {
            return;
        }
        HashMap<String, Class> map = this.variables;
        if (map == null || !map.containsKey(str)) {
            if (cls == null) {
                cls = Object.class;
            }
            this.inputs.put(str, cls);
        }
    }

    public void addInput(String str, Class cls, Class[] clsArr) {
        if (cls == null) {
            cls = Object.class;
        }
        addInput(str, cls);
        if (this.typeParameters == null) {
            this.typeParameters = new LinkedHashMap();
        }
        if (this.typeParameters.get(str) == null) {
            this.typeParameters.put(str, new LinkedHashMap());
        }
        Map<String, Type> map = this.typeParameters.get(str);
        if (clsArr.length != cls.getTypeParameters().length) {
            throw new RuntimeException("wrong number of type parameters for: " + cls.getName());
        }
        TypeVariable[] typeParameters = cls.getTypeParameters();
        for (int i11 = 0; i11 < clsArr.length; i11++) {
            map.put(typeParameters[i11].getName(), clsArr[i11]);
        }
    }

    public void addInputs(Map<String, Class> map) {
        if (map == null) {
            return;
        }
        for (Map.Entry<String, Class> entry : map.entrySet()) {
            addInput(entry.getKey(), entry.getValue());
        }
    }

    public void addPackageImport(String str) {
        this.parserConfiguration.addPackageImport(str);
    }

    public void addTypeParameters(Map<String, Map<String, Type>> map) {
        if (map == null) {
            return;
        }
        if (this.typeParameters == null) {
            map = new HashMap<>();
        }
        for (Map.Entry<String, Map<String, Type>> entry : map.entrySet()) {
            HashMap map2 = new HashMap();
            for (Map.Entry<String, Type> entry2 : entry.getValue().entrySet()) {
                map2.put(entry2.getKey(), entry2.getValue());
            }
            map.put(entry.getKey(), map2);
        }
    }

    public void addVariable(String str, Class cls) {
        initializeTables();
        if (this.variables.containsKey(str) || this.inputs.containsKey(str)) {
            return;
        }
        if (cls == null) {
            cls = Object.class;
        }
        this.variables.put(str, cls);
        makeVisible(str);
    }

    public void addVariable(String str, Class cls, boolean z10) {
        initializeTables();
        if (this.variables.containsKey(str) && z10) {
            throw new RuntimeException("statically-typed variable already defined in scope: " + str);
        }
        if (cls == null) {
            cls = Object.class;
        }
        this.variables.put(str, cls);
        makeVisible(str);
    }

    public void addVariables(Map<String, Class> map) {
        if (map == null) {
            return;
        }
        initializeTables();
        for (Map.Entry<String, Class> entry : map.entrySet()) {
            addVariable(entry.getKey(), entry.getValue());
        }
    }

    public ParserContext createColoringSubcontext() {
        if (this.parent == null) {
            throw new RuntimeException("create a subContext first");
        }
        ParserContext parserContext = new ParserContext(this.parserConfiguration) { // from class: org.mvel2.ParserContext.1
            @Override // org.mvel2.ParserContext
            public void addVariable(String str, Class cls) {
                if ((ParserContext.this.parent.variables != null && ParserContext.this.parent.variables.containsKey(str)) || (ParserContext.this.parent.inputs != null && ParserContext.this.parent.inputs.containsKey(str))) {
                    this.variablesEscape = true;
                }
                super.addVariable(str, cls);
            }

            @Override // org.mvel2.ParserContext
            public void addVariable(String str, Class cls, boolean z10) {
                if ((ParserContext.this.parent.variables != null && ParserContext.this.parent.variables.containsKey(str)) || (ParserContext.this.parent.inputs != null && ParserContext.this.parent.inputs.containsKey(str))) {
                    this.variablesEscape = true;
                }
                super.addVariable(str, cls, z10);
            }

            @Override // org.mvel2.ParserContext
            public Class getVarOrInputType(String str) {
                if ((ParserContext.this.parent.variables != null && ParserContext.this.parent.variables.containsKey(str)) || (ParserContext.this.parent.inputs != null && ParserContext.this.parent.inputs.containsKey(str))) {
                    this.variablesEscape = true;
                }
                return super.getVarOrInputType(str);
            }
        };
        parserContext.initializeTables();
        parserContext.sourceFile = this.sourceFile;
        parserContext.inputs = this.inputs;
        parserContext.variables = this.variables;
        parserContext.indexedInputs = this.indexedInputs;
        parserContext.typeParameters = this.typeParameters;
        parserContext.sourceLineLookups = this.sourceLineLookups;
        parserContext.lastLineLabel = this.lastLineLabel;
        parserContext.variableVisibility = this.variableVisibility;
        parserContext.globalFunctions = this.globalFunctions;
        parserContext.lastTypeParameters = this.lastTypeParameters;
        parserContext.errorList = this.errorList;
        parserContext.rootParser = this.rootParser;
        parserContext.lineCount = this.lineCount;
        parserContext.lineOffset = this.lineOffset;
        parserContext.compiled = this.compiled;
        parserContext.strictTypeEnforcement = this.strictTypeEnforcement;
        parserContext.strongTyping = this.strongTyping;
        parserContext.fatalError = this.fatalError;
        parserContext.retainParserState = this.retainParserState;
        parserContext.debugSymbols = this.debugSymbols;
        parserContext.blockSymbols = this.blockSymbols;
        parserContext.executableCodeReached = this.executableCodeReached;
        parserContext.indexAllocation = this.indexAllocation;
        return parserContext;
    }

    public ParserContext createSubcontext() {
        ParserContext parserContext = new ParserContext(this.parserConfiguration);
        parserContext.sourceFile = this.sourceFile;
        parserContext.parent = this;
        parserContext.addInputs(this.inputs);
        parserContext.addVariables(this.variables);
        parserContext.addIndexedInputs(this.indexedInputs);
        parserContext.addTypeParameters(this.typeParameters);
        parserContext.sourceLineLookups = this.sourceLineLookups;
        parserContext.lastLineLabel = this.lastLineLabel;
        parserContext.variableVisibility = this.variableVisibility;
        parserContext.globalFunctions = this.globalFunctions;
        parserContext.lastTypeParameters = this.lastTypeParameters;
        parserContext.errorList = this.errorList;
        parserContext.rootParser = this.rootParser;
        parserContext.lineCount = this.lineCount;
        parserContext.lineOffset = this.lineOffset;
        parserContext.compiled = this.compiled;
        parserContext.strictTypeEnforcement = this.strictTypeEnforcement;
        parserContext.strongTyping = this.strongTyping;
        parserContext.fatalError = this.fatalError;
        parserContext.retainParserState = this.retainParserState;
        parserContext.debugSymbols = this.debugSymbols;
        parserContext.blockSymbols = this.blockSymbols;
        parserContext.executableCodeReached = this.executableCodeReached;
        parserContext.indexAllocation = this.indexAllocation;
        return parserContext;
    }

    public void declareFunction(Function function) {
        if (this.globalFunctions == null) {
            this.globalFunctions = new LinkedHashMap();
        }
        this.globalFunctions.put(function.getName(), function);
    }

    public ClassLoader getClassLoader() {
        return this.parserConfiguration.getClassLoader();
    }

    public Map<String, CompiledExpression> getCompiledExpressionCache() {
        if (this.compiledExpressionCache == null) {
            this.compiledExpressionCache = new HashMap();
        }
        return this.compiledExpressionCache;
    }

    public List<c> getErrorList() {
        List<c> list = this.errorList;
        return list == null ? Collections.emptyList() : list;
    }

    public Object getEvaluationContext() {
        return this.evaluationContext;
    }

    public Function getFunction(String str) {
        HashMap<String, Function> map = this.globalFunctions;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public Map getFunctions() {
        HashMap<String, Function> map = this.globalFunctions;
        return map == null ? Collections.emptyMap() : map;
    }

    public Class getImport(String str) {
        return this.parserConfiguration.getImport(str);
    }

    public Map<String, Object> getImports() {
        return this.parserConfiguration.getImports();
    }

    public ArrayList<String> getIndexedInputs() {
        initIndexedVariables();
        return this.indexedInputs;
    }

    public String[] getIndexedVarNames() {
        ArrayList<String> arrayList = this.indexedInputs;
        if (arrayList == null) {
            return new String[0];
        }
        String[] strArr = new String[arrayList.size()];
        this.indexedInputs.toArray(strArr);
        return strArr;
    }

    public Map<String, Class> getInputs() {
        return this.inputs;
    }

    public Map<String, k10.b> getInterceptors() {
        return this.parserConfiguration.getInterceptors();
    }

    public LineLabel getLastLineLabel() {
        return this.lastLineLabel;
    }

    public Type[] getLastTypeParameters() {
        return this.lastTypeParameters;
    }

    public int getLineCount() {
        return this.lineCount;
    }

    public int getLineFor(String str, int i11) {
        Map<String, j.b> map = this.sourceLineLookups;
        if (map == null || !map.containsKey(str)) {
            return -1;
        }
        return this.sourceLineLookups.get(str).a(i11);
    }

    public int getLineOffset() {
        return this.lineOffset;
    }

    public ParserConfiguration getParserConfiguration() {
        return this.parserConfiguration;
    }

    public Proto getProtoImport(String str) {
        return (Proto) this.parserConfiguration.getImports().get(str);
    }

    public Map<String, Class> getReturnTypeCache() {
        if (this.returnTypeCache == null) {
            this.returnTypeCache = new HashMap();
        }
        return this.returnTypeCache;
    }

    public org.mvel2.compiler.b getRootParser() {
        return this.rootParser;
    }

    public String getSourceFile() {
        return this.sourceFile;
    }

    public MethodStub getStaticImport(String str) {
        return this.parserConfiguration.getStaticImport(str);
    }

    public Object getStaticOrClassImport(String str) {
        return this.parserConfiguration.getStaticOrClassImport(str);
    }

    public Map<String, Type> getTypeParameters(String str) {
        HashMap<String, Map<String, Type>> map = this.typeParameters;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public Type[] getTypeParametersAsArray(String str) {
        HashMap<String, Class> map = this.variables;
        Class cls = (map == null || !map.containsKey(str)) ? this.inputs.get(str) : this.variables.get(str);
        if (cls == null) {
            return null;
        }
        TypeVariable[] typeParameters = cls.getTypeParameters();
        Type[] typeArr = new Type[typeParameters.length];
        Map<String, Type> typeParameters2 = getTypeParameters(str);
        if (typeParameters2 == null) {
            return null;
        }
        for (int i11 = 0; i11 < typeParameters.length; i11++) {
            typeArr[i11] = typeParameters2.get(typeParameters[i11].toString());
        }
        return typeArr;
    }

    public Class getVarOrInputType(String str) {
        HashMap<String, Class> map = this.variables;
        if (map != null && map.containsKey(str)) {
            return this.variables.get(str);
        }
        Map<String, Class> map2 = this.inputs;
        return (map2 == null || !map2.containsKey(str)) ? Object.class : this.inputs.get(str);
    }

    public Class getVarOrInputTypeOrNull(String str) {
        HashMap<String, Class> map = this.variables;
        if (map != null && map.containsKey(str)) {
            return this.variables.get(str);
        }
        Map<String, Class> map2 = this.inputs;
        if (map2 == null || !map2.containsKey(str)) {
            return null;
        }
        return this.inputs.get(str);
    }

    public Set<String> getVariableScope() {
        ArrayList<Set<String>> arrayList = this.variableVisibility;
        if (arrayList == null || arrayList.isEmpty()) {
            throw new RuntimeException("no context");
        }
        ArrayList<Set<String>> arrayList2 = this.variableVisibility;
        return arrayList2.get(arrayList2.size() - 1);
    }

    public HashMap<String, Class> getVariables() {
        return this.variables;
    }

    public boolean hasFunction() {
        HashMap<String, Function> map = this.globalFunctions;
        return (map == null || map.size() == 0) ? false : true;
    }

    public boolean hasFunction(String str) {
        HashMap<String, Function> map = this.globalFunctions;
        return map != null && map.containsKey(str);
    }

    public boolean hasImport(String str) {
        return this.parserConfiguration.hasImport(str);
    }

    public boolean hasImports() {
        return this.parserConfiguration.hasImports();
    }

    public boolean hasIndexedInputs() {
        ArrayList<String> arrayList = this.indexedInputs;
        return (arrayList == null || arrayList.size() == 0) ? false : true;
    }

    public boolean hasProtoImport(String str) {
        Object obj = this.parserConfiguration.getImports().get(str);
        return obj != null && (obj instanceof Proto);
    }

    public boolean hasVarOrInput(String str) {
        Map<String, Class> map;
        HashMap<String, Class> map2 = this.variables;
        return (map2 != null && map2.containsKey(str)) || ((map = this.inputs) != null && map.containsKey(str));
    }

    public int incrementLineCount(int i11) {
        int i12 = this.lineCount + i11;
        this.lineCount = i12;
        return i12;
    }

    public void initLineMapping(String str, char[] cArr) {
        if (this.sourceLineLookups == null) {
            this.sourceLineLookups = new HashMap();
        }
        this.sourceLineLookups.put(str, new j(cArr).b());
    }

    public void initializeTables() {
        if (this.variables == null) {
            this.variables = new LinkedHashMap();
        }
        if (this.inputs == null) {
            this.inputs = new LinkedHashMap();
        }
        if (this.variableVisibility == null) {
            pushVariableScope();
            Set<String> variableScope = getVariableScope();
            variableScope.addAll(this.variables.keySet());
            variableScope.addAll(this.inputs.keySet());
            variableScope.addAll(this.parserConfiguration.getImports().keySet());
            if (this.inputs.containsKey("this")) {
                Class cls = this.inputs.get("this");
                for (Field field : cls.getFields()) {
                    if ((field.getModifiers() & 9) != 0) {
                        variableScope.add(field.getName());
                    }
                }
                for (Method method : cls.getMethods()) {
                    if ((method.getModifiers() & 1) != 0) {
                        if (method.getName().startsWith("get") || (method.getName().startsWith("is") && (method.getReturnType().equals(Boolean.TYPE) || method.getReturnType().equals(Boolean.class)))) {
                            String strD = p.d(method.getName());
                            variableScope.add(strD);
                            variableScope.add(strD.substring(0, 1).toUpperCase() + strD.substring(1));
                        } else {
                            variableScope.add(method.getName());
                        }
                    }
                }
            }
        }
    }

    public boolean isAllowBootstrapBypass() {
        return this.parserConfiguration.isAllowBootstrapBypass();
    }

    public boolean isBlockSymbols() {
        return this.blockSymbols;
    }

    public boolean isCompiled() {
        return this.compiled;
    }

    public boolean isDebugSymbols() {
        return this.debugSymbols;
    }

    public boolean isExecutableCodeReached() {
        return this.executableCodeReached;
    }

    public boolean isFatalError() {
        return this.fatalError;
    }

    public boolean isFunctionContext() {
        return this.functionContext;
    }

    public boolean isIndexAllocation() {
        return this.indexAllocation;
    }

    public boolean isLineMapped(String str) {
        Map<String, j.b> map = this.sourceLineLookups;
        return map != null && map.containsKey(str);
    }

    public boolean isOptimizerNotified() {
        return this.optimizationMode;
    }

    public boolean isRetainParserState() {
        return this.retainParserState;
    }

    public boolean isStrictTypeEnforcement() {
        return this.strictTypeEnforcement;
    }

    public boolean isStrongTyping() {
        return this.strongTyping;
    }

    public boolean isVariableVisible(String str) {
        ArrayList<Set<String>> arrayList = this.variableVisibility;
        if (arrayList == null || arrayList.isEmpty()) {
            return false;
        }
        if (AbstractParser.LITERALS.containsKey(str) || hasImport(str)) {
            return true;
        }
        int size = this.variableVisibility.size() - 1;
        while (!this.variableVisibility.get(size).contains(str)) {
            int i11 = size - 1;
            if (size == 0) {
                return false;
            }
            size = i11;
        }
        return true;
    }

    public boolean isVariablesEscape() {
        return this.variablesEscape;
    }

    public boolean isVisitedLine(String str, int i11) {
        Map<String, Set<Integer>> map = this.visitedLines;
        return map != null && map.containsKey(str) && this.visitedLines.get(str).contains(Integer.valueOf(i11));
    }

    public void makeVisible(String str) {
        ArrayList<Set<String>> arrayList = this.variableVisibility;
        if (arrayList == null || arrayList.isEmpty()) {
            throw new RuntimeException("no context");
        }
        getVariableScope().add(str);
    }

    public void optimizationNotify() {
        this.optimizationMode = true;
    }

    public void popVariableScope() {
        ArrayList<Set<String>> arrayList = this.variableVisibility;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        ArrayList<Set<String>> arrayList2 = this.variableVisibility;
        arrayList2.remove(arrayList2.size() - 1);
        setLastTypeParameters(null);
    }

    public void processTables() {
        Iterator<String> it = this.variables.keySet().iterator();
        while (it.hasNext()) {
            this.inputs.remove(it.next());
        }
    }

    public void pushVariableScope() {
        initVariableVisibility();
        this.variableVisibility.add(new HashSet());
    }

    public void setAllowBootstrapBypass(boolean z10) {
        this.parserConfiguration.setAllowBootstrapBypass(z10);
    }

    public void setBlockSymbols(boolean z10) {
        this.blockSymbols = z10;
    }

    public void setCompiled(boolean z10) {
        this.compiled = z10;
    }

    public void setDebugSymbols(boolean z10) {
        this.debugSymbols = z10;
    }

    public void setErrorList(List<c> list) {
        this.errorList = list;
    }

    public void setExecutableCodeReached(boolean z10) {
        this.executableCodeReached = z10;
    }

    public void setFatalError(boolean z10) {
        this.fatalError = z10;
    }

    public void setImports(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Class) {
                addImport(entry.getKey(), (Class) value);
            } else if (value instanceof Method) {
                addImport(entry.getKey(), (Method) value);
            } else {
                if (!(value instanceof MethodStub)) {
                    throw new RuntimeException("invalid element in imports map: " + entry.getKey() + " (" + value + ")");
                }
                addImport(entry.getKey(), (MethodStub) value);
            }
        }
    }

    public void setIndexAllocation(boolean z10) {
        this.indexAllocation = z10;
    }

    public void setInputs(Map<String, Class> map) {
        this.inputs = map;
    }

    public void setInterceptors(Map<String, k10.b> map) {
        this.parserConfiguration.setInterceptors(map);
    }

    public LineLabel setLastLineLabel(LineLabel lineLabel) {
        this.lastLineLabel = lineLabel;
        return lineLabel;
    }

    public void setLastTypeParameters(Type[] typeArr) {
        this.lastTypeParameters = typeArr;
    }

    public void setLineAndOffset(int i11, int i12) {
        this.lineOffset = i12;
    }

    public int setLineCount(int i11) {
        this.lineCount = i11;
        return i11;
    }

    public void setLineOffset(int i11) {
        this.lineOffset = i11;
    }

    public void setRetainParserState(boolean z10) {
        this.retainParserState = z10;
    }

    public void setRootParser(org.mvel2.compiler.b bVar) {
        this.rootParser = bVar;
    }

    public void setSourceFile(String str) {
        if (str != null) {
            this.sourceFile = str;
        }
    }

    public void setStrictTypeEnforcement(boolean z10) {
        this.strictTypeEnforcement = z10;
    }

    public void setStrongTyping(boolean z10) {
        this.strongTyping = z10;
        if (z10) {
            this.strictTypeEnforcement = true;
        }
    }

    public void setVariables(HashMap<String, Class> map) {
        this.variables = map;
    }

    public ParserContext stronglyTyped() {
        setStrongTyping(true);
        return this;
    }

    public int variableIndexOf(String str) {
        ArrayList<String> arrayList;
        ArrayList<String> arrayList2 = this.indexedInputs;
        if (arrayList2 == null) {
            return -1;
        }
        int iIndexOf = arrayList2.indexOf(str);
        if (iIndexOf != -1 || (arrayList = this.indexedLocals) == null) {
            return iIndexOf;
        }
        int iIndexOf2 = arrayList.indexOf(str);
        return iIndexOf2 != -1 ? iIndexOf2 + this.indexedInputs.size() : iIndexOf2;
    }

    public void visitLine(String str, int i11) {
        if (this.visitedLines == null) {
            this.visitedLines = new HashMap();
        }
        if (!this.visitedLines.containsKey(str)) {
            this.visitedLines.put(str, new TreeSet());
        }
        this.visitedLines.get(str).add(Integer.valueOf(i11));
    }

    public ParserContext withImport(Class cls) {
        addImport(cls);
        return this;
    }

    public ParserContext withIndexedVars(String[] strArr) {
        ArrayList<String> arrayList = new ArrayList<>();
        this.indexedInputs = arrayList;
        Collections.addAll(arrayList, strArr);
        return this;
    }

    public ParserContext withInput(String str, Class cls) {
        addInput(str, cls);
        return this;
    }

    public ParserContext withInputs(Map<String, Class> map) {
        setInputs(map);
        return this;
    }

    public ParserContext withTypeParameters(Map<String, Map<String, Type>> map) {
        addTypeParameters(map);
        return this;
    }
}

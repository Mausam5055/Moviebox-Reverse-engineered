package org.mvel2.optimizers.impl.asm;

import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import h10.g;
import h10.q;
import h10.r;
import h10.y;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.mvel2.CompileException;
import org.mvel2.OptimizationFailure;
import org.mvel2.ParserContext;
import org.mvel2.PropertyAccessException;
import org.mvel2.ast.TypeDescriptor;
import org.mvel2.ast.WithNode;
import org.mvel2.b;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.compiler.ExecutableLiteral;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.compiler.PropertyVerifier;
import org.mvel2.d;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.AbstractOptimizer;
import org.mvel2.optimizers.OptimizationNotSupported;
import org.mvel2.util.i;
import org.mvel2.util.k;
import org.mvel2.util.m;
import org.mvel2.util.n;
import org.mvel2.util.p;
import org.mvel2.util.s;

/* JADX INFO: loaded from: classes7.dex */
public class ASMAccessorOptimizer extends AbstractOptimizer implements org.mvel2.optimizers.a {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int ARRAY = 0;
    private static final Object[] EMPTYARG;
    private static final Class[] EMPTYCLS;
    private static final int LIST = 1;
    private static String LIST_IMPL = null;
    private static final int MAP = 2;
    private static final String MAP_IMPL = "java/util/HashMap";
    private static String NAMESPACE = null;
    private static final int OPCODES_VERSION;
    private static final int VAL = 3;
    private static k classLoader;
    private s buildLog;
    private String className;
    private int compileDepth;
    private ArrayList<ExecutableStatement> compiledInputs;
    private Object ctx;

    /* JADX INFO: renamed from: cw, reason: collision with root package name */
    private g f72000cw;
    private boolean deferFinish;
    private boolean first;
    private Class ingressType;
    private boolean literal;
    private int maxlocals;
    private boolean methNull;

    /* JADX INFO: renamed from: mv, reason: collision with root package name */
    private r f72001mv;
    private boolean noinit;
    private boolean propNull;
    private Class returnType;
    private int stacksize;
    private Object thisRef;
    private long time;
    private Object val;
    private VariableResolverFactory variableFactory;

    private static class a extends ClassLoader {
        a(ClassLoader classLoader) {
            super(classLoader);
        }

        Class a(String str, byte[] bArr) {
            return defineClass(str, bArr, 0, bArr.length);
        }
    }

    static {
        String strF = n.f();
        if (strF.startsWith("1.4")) {
            OPCODES_VERSION = 48;
        } else if (strF.startsWith("1.5")) {
            OPCODES_VERSION = 49;
        } else if (strF.startsWith("1.6") || strF.startsWith("1.7") || strF.startsWith("1.8") || strF.startsWith(PrepareException.ERROR_MINI_APP_CLOSE) || strF.startsWith("10") || strF.startsWith(PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY) || strF.startsWith("12")) {
            OPCODES_VERSION = 50;
        } else {
            OPCODES_VERSION = 46;
        }
        String property = System.getProperty("mvel2.namespace");
        if (property == null) {
            NAMESPACE = "org/mvel2/";
        } else {
            NAMESPACE = property;
        }
        String property2 = System.getProperty("mvel2.jit.list_impl");
        if (property2 == null) {
            LIST_IMPL = NAMESPACE + "util/FastList";
        } else {
            LIST_IMPL = property2;
        }
        EMPTYARG = new Object[0];
        EMPTYCLS = new Class[0];
    }

    public ASMAccessorOptimizer() {
        this.first = true;
        this.noinit = false;
        this.deferFinish = false;
        this.literal = false;
        this.propNull = false;
        this.methNull = false;
        this.stacksize = 1;
        this.maxlocals = 1;
        this.compileDepth = 0;
        new g(1);
    }

    private ASMAccessorOptimizer(g gVar, r rVar, ArrayList<ExecutableStatement> arrayList, String str, s sVar, int i11) {
        this.first = true;
        this.literal = false;
        this.propNull = false;
        this.methNull = false;
        this.stacksize = 1;
        this.maxlocals = 1;
        this.f72000cw = gVar;
        this.f72001mv = rVar;
        this.compiledInputs = arrayList;
        this.className = str;
        this.buildLog = sVar;
        this.compileDepth = i11 + 1;
        this.noinit = true;
        this.deferFinish = true;
    }

    private void _finishJIT() {
        if (this.deferFinish) {
            return;
        }
        Class cls = this.returnType;
        if (cls != null && cls.isPrimitive()) {
            wrapPrimitive(this.returnType);
        }
        if (this.returnType == Void.TYPE) {
            this.f72001mv.j(1);
        }
        this.f72001mv.j(176);
        dumpAdvancedDebugging();
        this.f72001mv.u(this.stacksize, this.maxlocals);
        this.f72001mv.f();
        r rVarG = this.f72000cw.g(1, "getKnownEgressType", "()Ljava/lang/Class;", null, null);
        this.f72001mv = rVarG;
        rVarG.e();
        visitConstantClass(this.returnType);
        this.f72001mv.j(176);
        this.f72001mv.u(1, 1);
        this.f72001mv.f();
        if (this.propNull) {
            this.f72000cw.e(1, "nullPropertyHandler", "L" + NAMESPACE + "integration/PropertyHandler;", null, null).c();
        }
        if (this.methNull) {
            this.f72000cw.e(1, "nullMethodHandler", "L" + NAMESPACE + "integration/PropertyHandler;", null, null).c();
        }
        buildInputs();
        s sVar = this.buildLog;
        if (sVar != null && sVar.length() != 0 && this.expr != null) {
            r rVarG2 = this.f72000cw.g(1, "toString", "()Ljava/lang/String;", null, null);
            this.f72001mv = rVarG2;
            rVarG2.e();
            this.f72001mv.o(new q());
            this.f72001mv.p(this.buildLog.toString() + "\n\n## { " + new String(this.expr) + " }");
            this.f72001mv.j(176);
            this.f72001mv.o(new q());
            this.f72001mv.u(1, 1);
            this.f72001mv.f();
        }
        this.f72000cw.d();
    }

    private int _getAccessor(Object obj, Class cls) {
        int i11;
        if (obj instanceof List) {
            this.f72001mv.E(187, LIST_IMPL);
            this.f72001mv.j(89);
            this.f72001mv.j(89);
            List list = (List) obj;
            intPush(list.size());
            this.f72001mv.v(183, LIST_IMPL, "<init>", "(I)V");
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (_getAccessor(it.next(), cls) != 3) {
                    this.f72001mv.j(87);
                }
                this.f72001mv.v(185, "java/util/List", "add", "(Ljava/lang/Object;)Z");
                this.f72001mv.j(87);
                this.f72001mv.j(89);
            }
            this.returnType = List.class;
            return 1;
        }
        if (obj instanceof Map) {
            this.f72001mv.E(187, MAP_IMPL);
            this.f72001mv.j(89);
            this.f72001mv.j(89);
            Map map = (Map) obj;
            intPush(map.size());
            this.f72001mv.v(183, MAP_IMPL, "<init>", "(I)V");
            for (Object obj2 : map.keySet()) {
                this.f72001mv.E(PsExtractor.AUDIO_STREAM, "java/util/Map");
                if (_getAccessor(obj2, cls) != 3) {
                    this.f72001mv.j(87);
                }
                if (_getAccessor(map.get(obj2), cls) != 3) {
                    this.f72001mv.j(87);
                }
                this.f72001mv.v(185, "java/util/Map", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");
                this.f72001mv.j(87);
                this.f72001mv.j(89);
            }
            this.returnType = Map.class;
            return 2;
        }
        if (!(obj instanceof Object[])) {
            if (cls.isArray()) {
                writeLiteralOrSubexpression(m.J0(((String) obj).toCharArray(), this.pCtx), m.T(cls));
            } else {
                writeLiteralOrSubexpression(m.J0(((String) obj).toCharArray(), this.pCtx));
            }
            return 3;
        }
        org.mvel2.compiler.a[] aVarArr = new org.mvel2.compiler.a[((Object[]) obj).length];
        if (cls != null) {
            i11 = 0;
            while (cls.getName().charAt(i11) == '[') {
                i11++;
            }
        } else {
            cls = Object[].class;
            i11 = 1;
        }
        try {
            Class clsT = m.T(cls);
            createArray(clsT, ((Object[]) obj).length);
            Class clsD = i11 > 1 ? m.D(null, m.A0('[', i11 - 1) + "L" + m.I(cls).getName() + ";", this.pCtx) : p.h(cls);
            this.f72001mv.j(89);
            int i12 = 0;
            for (Object obj3 : (Object[]) obj) {
                intPush(i12);
                if (_getAccessor(obj3, clsD) != 3) {
                    this.f72001mv.j(87);
                }
                if (clsT.isPrimitive()) {
                    unwrapPrimitive(clsT);
                }
                arrayStore(clsT);
                this.f72001mv.j(89);
                i12++;
            }
            return 0;
        } catch (ClassNotFoundException e11) {
            throw new RuntimeException("this error should never throw:" + m.I(cls).getName(), e11);
        }
    }

    private void _initJIT() {
        if (d.z()) {
            this.buildLog = new s();
        }
        this.f72000cw = new g(3);
        synchronized (Runtime.getRuntime()) {
            g gVar = this.f72000cw;
            int i11 = OPCODES_VERSION;
            String str = "ASMAccessorImpl_" + String.valueOf(this.f72000cw.hashCode()).replaceAll("\\-", "_") + (System.currentTimeMillis() / 10) + ((int) (Math.random() * 100.0d));
            this.className = str;
            gVar.a(i11, 33, str, null, "java/lang/Object", new String[]{NAMESPACE + "compiler/Accessor"});
        }
        r rVarG = this.f72000cw.g(1, "<init>", "()V", null, null);
        rVarG.e();
        rVarG.F(25, 0);
        rVarG.v(183, "java/lang/Object", "<init>", "()V");
        rVarG.j(177);
        rVarG.u(1, 1);
        rVarG.f();
        r rVarG2 = this.f72000cw.g(1, "getValue", "(Ljava/lang/Object;Ljava/lang/Object;L" + NAMESPACE + "integration/VariableResolverFactory;)Ljava/lang/Object;", null, null);
        this.f72001mv = rVarG2;
        rVarG2.e();
    }

    private void _initJIT2() {
        if (d.z()) {
            this.buildLog = new s();
        }
        this.f72000cw = new g(3);
        synchronized (Runtime.getRuntime()) {
            g gVar = this.f72000cw;
            int i11 = OPCODES_VERSION;
            String str = "ASMAccessorImpl_" + String.valueOf(this.f72000cw.hashCode()).replaceAll("\\-", "_") + (System.currentTimeMillis() / 10) + ((int) (Math.random() * 100.0d));
            this.className = str;
            gVar.a(i11, 33, str, null, "java/lang/Object", new String[]{NAMESPACE + "compiler/Accessor"});
        }
        r rVarG = this.f72000cw.g(1, "<init>", "()V", null, null);
        rVarG.e();
        rVarG.F(25, 0);
        rVarG.v(183, "java/lang/Object", "<init>", "()V");
        rVarG.j(177);
        rVarG.u(1, 1);
        rVarG.f();
        r rVarG2 = this.f72000cw.g(1, "setValue", "(Ljava/lang/Object;Ljava/lang/Object;L" + NAMESPACE + "integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;", null, null);
        this.f72001mv = rVarG2;
        rVarG2.e();
    }

    private org.mvel2.compiler.a _initializeAccessor() throws Exception {
        Object objNewInstance;
        if (this.deferFinish) {
            return null;
        }
        Class clsLoadClass = loadClass(this.className, this.f72000cw.r());
        try {
            if (this.compiledInputs.size() == 0) {
                objNewInstance = clsLoadClass.newInstance();
            } else {
                Class<?>[] clsArr = new Class[this.compiledInputs.size()];
                for (int i11 = 0; i11 < this.compiledInputs.size(); i11++) {
                    clsArr[i11] = ExecutableStatement.class;
                }
                Constructor constructor = clsLoadClass.getConstructor(clsArr);
                ArrayList<ExecutableStatement> arrayList = this.compiledInputs;
                objNewInstance = constructor.newInstance(arrayList.toArray(new ExecutableStatement[arrayList.size()]));
            }
            if (this.propNull) {
                Field field = clsLoadClass.getField("nullPropertyHandler");
                k10.d.b();
                field.set(objNewInstance, null);
            }
            if (this.methNull) {
                Field field2 = clsLoadClass.getField("nullMethodHandler");
                k10.d.a();
                field2.set(objNewInstance, null);
            }
            return (org.mvel2.compiler.a) objNewInstance;
        } catch (VerifyError e11) {
            PrintStream printStream = System.out;
            printStream.println("**** COMPILER BUG! REPORT THIS IMMEDIATELY AT http://jira.codehaus.org/browse/MVEL");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Expression: ");
            char[] cArr = this.expr;
            sb2.append(cArr != null ? new String(cArr) : null);
            printStream.println(sb2.toString());
            throw e11;
        }
    }

    private void addPrintOut(String str) {
        this.f72001mv.g(178, "java/lang/System", "out", "Ljava/io/PrintStream;");
        this.f72001mv.p(str);
        this.f72001mv.v(182, "java/io/PrintStream", "println", "(Ljava/lang/String;)V");
    }

    private Object addSubstatement(ExecutableStatement executableStatement) {
        this.compiledInputs.add(executableStatement);
        this.f72001mv.F(25, 0);
        r rVar = this.f72001mv;
        String str = this.className;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(TtmlNode.TAG_P);
        sb2.append(this.compiledInputs.size() - 1);
        rVar.g(180, str, sb2.toString(), "L" + NAMESPACE + "compiler/ExecutableStatement;");
        this.f72001mv.F(25, 2);
        this.f72001mv.F(25, 3);
        this.f72001mv.v(185, y.h(ExecutableStatement.class), "getValue", "(Ljava/lang/Object;L" + NAMESPACE + "integration/VariableResolverFactory;)Ljava/lang/Object;");
        return null;
    }

    private void anyArrayCheck(Class cls) {
        if (cls == boolean[].class) {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "[Z");
            return;
        }
        if (cls == int[].class) {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "[I");
            return;
        }
        if (cls == float[].class) {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "[F");
            return;
        }
        if (cls == double[].class) {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "[D");
            return;
        }
        if (cls == short[].class) {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "[S");
            return;
        }
        if (cls == long[].class) {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "[J");
            return;
        }
        if (cls == byte[].class) {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "[B");
        } else if (cls == char[].class) {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "[C");
        } else {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "[Ljava/lang/Object;");
        }
    }

    private void buildInputs() {
        if (this.compiledInputs.size() == 0) {
            return;
        }
        s sVar = new s("(");
        int size = this.compiledInputs.size();
        for (int i11 = 0; i11 < size; i11++) {
            this.f72000cw.e(2, TtmlNode.TAG_P + i11, "L" + NAMESPACE + "compiler/ExecutableStatement;", null, null).c();
            sVar.d("L" + NAMESPACE + "compiler/ExecutableStatement;");
        }
        sVar.d(")V");
        r rVarG = this.f72000cw.g(1, "<init>", sVar.toString(), null, null);
        rVarG.e();
        rVarG.F(25, 0);
        rVarG.v(183, "java/lang/Object", "<init>", "()V");
        int i12 = 0;
        while (i12 < size) {
            rVarG.F(25, 0);
            int i13 = i12 + 1;
            rVarG.F(25, i13);
            rVarG.g(181, this.className, TtmlNode.TAG_P + i12, "L" + NAMESPACE + "compiler/ExecutableStatement;");
            i12 = i13;
        }
        rVarG.j(177);
        rVarG.u(0, 0);
        rVarG.f();
    }

    private void checkcast(Class cls) {
        this.f72001mv.E(PsExtractor.AUDIO_STREAM, y.h(cls));
    }

    private org.mvel2.compiler.a compileAccessor() {
        Object beanPropertyAO = this.ctx;
        try {
            if (d.f71968h) {
                while (this.cursor < this.end) {
                    int iNextSubToken = nextSubToken();
                    if (iNextSubToken == 0) {
                        beanPropertyAO = getBeanPropertyAO(beanPropertyAO, capture());
                    } else if (iNextSubToken == 1) {
                        beanPropertyAO = getMethod(beanPropertyAO, capture());
                    } else if (iNextSubToken == 2) {
                        beanPropertyAO = getCollectionPropertyAO(beanPropertyAO, capture());
                    } else if (iNextSubToken == 3) {
                        beanPropertyAO = getWithProperty(beanPropertyAO);
                    }
                    if (this.fields == -1) {
                        if (beanPropertyAO == null) {
                            if (!this.nullSafe) {
                                break;
                            }
                            throw new OptimizationNotSupported();
                        }
                        this.fields = 0;
                    }
                    this.first = false;
                    if (this.nullSafe && this.cursor < this.end) {
                        this.f72001mv.j(89);
                        q qVar = new q();
                        this.f72001mv.n(199, qVar);
                        this.f72001mv.j(176);
                        this.f72001mv.o(qVar);
                    }
                }
            } else {
                while (this.cursor < this.end) {
                    int iNextSubToken2 = nextSubToken();
                    if (iNextSubToken2 == 0) {
                        beanPropertyAO = getBeanProperty(beanPropertyAO, capture());
                    } else if (iNextSubToken2 == 1) {
                        beanPropertyAO = getMethod(beanPropertyAO, capture());
                    } else if (iNextSubToken2 == 2) {
                        beanPropertyAO = getCollectionProperty(beanPropertyAO, capture());
                    } else if (iNextSubToken2 == 3) {
                        beanPropertyAO = getWithProperty(beanPropertyAO);
                    }
                    if (this.fields == -1) {
                        if (beanPropertyAO == null) {
                            if (!this.nullSafe) {
                                break;
                            }
                            throw new OptimizationNotSupported();
                        }
                        this.fields = 0;
                    }
                    this.first = false;
                    if (this.nullSafe && this.cursor < this.end) {
                        this.f72001mv.j(89);
                        q qVar2 = new q();
                        this.f72001mv.n(199, qVar2);
                        this.f72001mv.j(176);
                        this.f72001mv.o(qVar2);
                    }
                }
            }
            this.val = beanPropertyAO;
            _finishJIT();
            return _initializeAccessor();
        } catch (IllegalAccessException e11) {
            throw new PropertyAccessException(new String(this.expr), this.expr, this.f71960st, e11, this.pCtx);
        } catch (IndexOutOfBoundsException e12) {
            throw new PropertyAccessException(new String(this.expr), this.expr, this.f71960st, e12, this.pCtx);
        } catch (NullPointerException e13) {
            throw new PropertyAccessException(new String(this.expr), this.expr, this.f71960st, e13, this.pCtx);
        } catch (InvocationTargetException e14) {
            throw new PropertyAccessException(new String(this.expr), this.expr, this.f71960st, e14, this.pCtx);
        } catch (PropertyAccessException e15) {
            throw new CompileException(e15.getMessage(), this.expr, this.f71960st, e15);
        } catch (CompileException e16) {
            throw e16;
        } catch (OptimizationNotSupported e17) {
            throw e17;
        } catch (Exception e18) {
            throw new CompileException(e18.getMessage(), this.expr, this.f71960st, e18);
        }
    }

    private void createArray(Class cls, int i11) {
        intPush(i11);
        if (cls.isPrimitive()) {
            this.f72001mv.l(188, toPrimitiveTypeOperand(cls));
        } else {
            this.f72001mv.E(PsExtractor.PRIVATE_STREAM_1, y.h(cls));
        }
    }

    private void dataConversion(Class cls) {
        if (cls.equals(Object.class)) {
            return;
        }
        ldcClassConstant(cls);
        this.f72001mv.v(184, NAMESPACE + "DataConversion", "convert", "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;");
    }

    private boolean debug(String str) {
        s sVar = this.buildLog;
        if (sVar == null) {
            return true;
        }
        sVar.d(str).d("\n");
        return true;
    }

    private void dumpAdvancedDebugging() {
        if (this.buildLog == null) {
            return;
        }
        PrintStream printStream = System.out;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("JIT Compiler Dump for: <<");
        char[] cArr = this.expr;
        sb2.append(cArr == null ? null : new String(cArr));
        sb2.append(">>\n-------------------------------\n");
        printStream.println(sb2.toString());
        printStream.println(this.buildLog.toString());
        printStream.println("\n<END OF DUMP>\n");
        if (d.A()) {
            try {
                FileWriter fileWriterQ = m.Q();
                fileWriterQ.write(this.buildLog.toString());
                fileWriterQ.flush();
                fileWriterQ.close();
            } catch (IOException unused) {
            }
        }
    }

    private Object getBeanProperty(Object obj, String str) throws IllegalAccessException, InvocationTargetException {
        boolean z10;
        Class<?> cls;
        Object objInvoke;
        ParserContext parserContext = this.pCtx;
        if ((parserContext == null ? this.currType : parserContext.getVarOrInputTypeOrNull(str)) == Object.class && !this.pCtx.isStrongTyping()) {
            this.currType = null;
        }
        Class cls2 = this.returnType;
        if (cls2 != null && cls2.isPrimitive()) {
            wrapPrimitive(this.returnType);
        }
        boolean z11 = obj instanceof Class;
        if (z11) {
            if (d.f71970j && "class".equals(str)) {
                ldcClassConstant((Class) obj);
                return obj;
            }
            cls = (Class) obj;
            z10 = true;
        } else if (obj != null) {
            cls = obj.getClass();
            z10 = false;
        } else {
            z10 = false;
            cls = null;
        }
        if (k10.d.f(cls)) {
            k10.d.c(cls);
            new StringBuilder().append("unable to compileShared: custom accessor does not support producing bytecode: ");
            throw null;
        }
        Member memberB = cls != null ? n.b(cls, str) : null;
        if (memberB != null && z10 && (memberB.getModifiers() & 8) == 0) {
            memberB = null;
        }
        if (memberB != null && k10.a.a()) {
            this.f72001mv.F(25, 1);
            this.f72001mv.p(memberB.getName());
            this.f72001mv.F(25, 3);
            this.f72001mv.v(184, NAMESPACE + "integration/GlobalListenerFactory", "notifyGetListeners", "(Ljava/lang/Object;Ljava/lang/String;L" + NAMESPACE + "integration/VariableResolverFactory;)V");
            k10.a.c(obj, memberB.getName(), this.variableFactory);
        }
        if (this.first) {
            if ("this".equals(str)) {
                this.f72001mv.F(25, 2);
                return this.thisRef;
            }
            VariableResolverFactory variableResolverFactory = this.variableFactory;
            if (variableResolverFactory != null && variableResolverFactory.isResolveable(str)) {
                if (this.variableFactory.isIndexedFactory() && this.variableFactory.isTarget(str)) {
                    try {
                        int iVariableIndexOf = this.variableFactory.variableIndexOf(str);
                        loadVariableByIndex(iVariableIndexOf);
                        return this.variableFactory.getIndexedVariableResolver(iVariableIndexOf).getValue();
                    } catch (Exception unused) {
                        throw new OptimizationFailure(str);
                    }
                }
                try {
                    loadVariableByName(str);
                    return this.variableFactory.getVariableResolver(str).getValue();
                } catch (Exception e11) {
                    throw new OptimizationFailure("critical error in JIT", e11);
                }
            }
            this.f72001mv.F(25, 1);
        }
        if (memberB instanceof Field) {
            return optimizeFieldMethodProperty(obj, str, cls, memberB);
        }
        if (memberB != null) {
            if (this.first) {
                this.f72001mv.F(25, 1);
            }
            try {
                objInvoke = ((Method) memberB).invoke(obj, EMPTYARG);
                if (this.returnType != memberB.getDeclaringClass()) {
                    this.f72001mv.E(PsExtractor.AUDIO_STREAM, y.h(memberB.getDeclaringClass()));
                }
                this.returnType = ((Method) memberB).getReturnType();
                if (memberB.getDeclaringClass().isInterface()) {
                    this.f72001mv.v(185, y.h(memberB.getDeclaringClass()), memberB.getName(), y.i((Method) memberB));
                } else {
                    this.f72001mv.v(182, y.h(memberB.getDeclaringClass()), memberB.getName(), y.i((Method) memberB));
                }
            } catch (IllegalAccessException e12) {
                Method method = (Method) memberB;
                Method methodZ = m.z(method);
                if (methodZ == null) {
                    throw new PropertyAccessException("could not access field: " + cls.getName() + "." + str, this.expr, this.f71960st, e12, this.pCtx);
                }
                this.f72001mv.E(PsExtractor.AUDIO_STREAM, y.h(methodZ.getDeclaringClass()));
                this.returnType = methodZ.getReturnType();
                this.f72001mv.v(185, y.h(methodZ.getDeclaringClass()), memberB.getName(), y.i(method));
                objInvoke = methodZ.invoke(obj, EMPTYARG);
            } catch (IllegalArgumentException e13) {
                if (memberB.getDeclaringClass().equals(obj)) {
                    try {
                        throw new CompileException("name collision between innerclass: " + Class.forName(memberB.getDeclaringClass().getName() + "$" + str).getCanonicalName() + "; and bean accessor: " + str + " (" + memberB.toString() + ")", this.expr, this.tkStart);
                    } catch (ClassNotFoundException unused2) {
                        throw e13;
                    }
                }
                throw e13;
            }
            if (k10.d.e()) {
                if (objInvoke == null) {
                    k10.d.b();
                    memberB.getName();
                    throw null;
                }
                writeOutNullHandler(memberB, 0);
            }
            this.currType = p.i(this.returnType);
            return objInvoke;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (map.containsKey(str) || this.nullSafe) {
                this.f72001mv.E(PsExtractor.AUDIO_STREAM, "java/util/Map");
                this.f72001mv.p(str);
                this.f72001mv.v(185, "java/util/Map", "get", "(Ljava/lang/Object;)Ljava/lang/Object;");
                return map.get(str);
            }
        }
        if (this.first && "this".equals(str)) {
            this.f72001mv.F(25, 2);
            return this.thisRef;
        }
        if ("length".equals(str) && obj.getClass().isArray()) {
            anyArrayCheck(obj.getClass());
            this.f72001mv.j(190);
            wrapPrimitive(Integer.TYPE);
            return Integer.valueOf(Array.getLength(obj));
        }
        if (AbstractParser.LITERALS.containsKey(str)) {
            Object obj2 = AbstractParser.LITERALS.get(str);
            if (obj2 instanceof Class) {
                ldcClassConstant((Class) obj2);
            }
            return obj2;
        }
        Object objTryStaticAccess = tryStaticAccess();
        if (objTryStaticAccess != null) {
            if (objTryStaticAccess instanceof Class) {
                ldcClassConstant((Class) objTryStaticAccess);
                return objTryStaticAccess;
            }
            if (!(objTryStaticAccess instanceof Method)) {
                return optimizeFieldMethodProperty(obj, str, cls, (Field) objTryStaticAccess);
            }
            Method method2 = (Method) objTryStaticAccess;
            writeFunctionPointerStub(method2.getDeclaringClass(), method2);
            return objTryStaticAccess;
        }
        if (z11) {
            Class cls3 = (Class) obj;
            for (Method method3 : cls3.getMethods()) {
                if (str.equals(method3.getName())) {
                    ParserContext parserContext2 = this.pCtx;
                    if (parserContext2 == null || parserContext2.getParserConfiguration() == null ? !d.f71967g : !this.pCtx.getParserConfiguration().isAllowNakedMethCall()) {
                        writeFunctionPointerStub(cls3, method3);
                        return method3;
                    }
                    this.f72001mv.j(87);
                    this.f72001mv.v(184, y.h(method3.getDeclaringClass()), method3.getName(), y.i(method3));
                    this.returnType = method3.getReturnType();
                    return method3.invoke(null, m.f72062a);
                }
            }
            try {
                Class clsD = m.D(this.variableFactory, cls3.getName() + "$" + str, this.pCtx);
                ldcClassConstant(clsD);
                return clsD;
            } catch (ClassNotFoundException unused3) {
            }
        } else {
            ParserContext parserContext3 = this.pCtx;
            if (parserContext3 == null || parserContext3.getParserConfiguration() == null ? d.f71967g : this.pCtx.getParserConfiguration().isAllowNakedMethCall()) {
                return getMethod(obj, str);
            }
        }
        if (obj == null) {
            throw new PropertyAccessException("unresolvable property or identifier: " + str, this.expr, this.f71960st, this.pCtx);
        }
        throw new PropertyAccessException("could not access: " + str + "; in class: " + obj.getClass().getName(), this.expr, this.f71960st, this.pCtx);
    }

    private Object getBeanPropertyAO(Object obj, String str) throws IllegalAccessException, InvocationTargetException {
        return (obj == null || !k10.d.f(obj.getClass())) ? getBeanProperty(obj, str) : propHandlerByteCode(str, obj, obj.getClass());
    }

    private Object getCollectionProperty(Object obj, String str) throws IllegalAccessException, InvocationTargetException {
        if (str.trim().length() > 0) {
            obj = getBeanProperty(obj, str);
            this.first = false;
        }
        this.currType = null;
        int i11 = this.cursor + 1;
        this.cursor = i11;
        skipWhitespace();
        if (this.cursor == this.end) {
            throw new CompileException("unterminated '['", this.expr, this.f71960st);
        }
        if (scanTo(']')) {
            throw new CompileException("unterminated '['", this.expr, this.f71960st);
        }
        String str2 = new String(this.expr, i11, this.cursor - i11);
        if (obj == null) {
            return null;
        }
        if (this.first) {
            this.f72001mv.F(25, 1);
        }
        ExecutableStatement executableStatement = (ExecutableStatement) m.J0(str2.toCharArray(), this.pCtx);
        Object value = executableStatement.getValue(this.ctx, this.variableFactory);
        this.cursor++;
        if (obj instanceof Map) {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "java/util/Map");
            Class clsWriteLiteralOrSubexpression = writeLiteralOrSubexpression(executableStatement);
            if (clsWriteLiteralOrSubexpression != null && clsWriteLiteralOrSubexpression.isPrimitive()) {
                wrapPrimitive(clsWriteLiteralOrSubexpression);
            }
            this.f72001mv.v(185, "java/util/Map", "get", "(Ljava/lang/Object;)Ljava/lang/Object;");
            return ((Map) obj).get(value);
        }
        if (obj instanceof List) {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "java/util/List");
            writeLiteralOrSubexpression(executableStatement, Integer.TYPE);
            this.f72001mv.v(185, "java/util/List", "get", "(I)Ljava/lang/Object;");
            return ((List) obj).get(((Integer) b.b(value, Integer.class)).intValue());
        }
        if (!obj.getClass().isArray()) {
            if (!(obj instanceof CharSequence)) {
                TypeDescriptor typeDescriptor = new TypeDescriptor(this.expr, this.start, this.length, 0);
                if (typeDescriptor.isArray()) {
                    try {
                        Class classReference = TypeDescriptor.getClassReference((Class) obj, typeDescriptor, this.variableFactory, this.pCtx);
                        ldcClassConstant(classReference);
                        return classReference;
                    } catch (Exception unused) {
                    }
                }
                throw new CompileException("illegal use of []: unknown type: " + obj.getClass().getName(), this.expr, this.f71960st);
            }
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "java/lang/CharSequence");
            if (value instanceof Integer) {
                Integer num = (Integer) value;
                intPush(num.intValue());
                this.f72001mv.v(185, "java/lang/CharSequence", "charAt", "(I)C");
                wrapPrimitive(Character.TYPE);
                return Character.valueOf(((CharSequence) obj).charAt(num.intValue()));
            }
            writeLiteralOrSubexpression(executableStatement, Integer.class);
            unwrapPrimitive(Integer.TYPE);
            this.f72001mv.v(185, "java/lang/CharSequence", "charAt", "(I)C");
            wrapPrimitive(Character.TYPE);
            return Character.valueOf(((CharSequence) obj).charAt(((Integer) b.b(value, Integer.class)).intValue()));
        }
        this.f72001mv.E(PsExtractor.AUDIO_STREAM, y.f(obj.getClass()));
        Class cls = Integer.TYPE;
        writeLiteralOrSubexpression(executableStatement, cls, value.getClass());
        Class clsI = m.I(obj.getClass());
        if (clsI.isPrimitive()) {
            if (clsI == cls) {
                this.f72001mv.j(46);
            } else if (clsI == Character.TYPE) {
                this.f72001mv.j(52);
            } else if (clsI == Boolean.TYPE) {
                this.f72001mv.j(51);
            } else if (clsI == Double.TYPE) {
                this.f72001mv.j(49);
            } else if (clsI == Float.TYPE) {
                this.f72001mv.j(48);
            } else if (clsI == Short.TYPE) {
                this.f72001mv.j(53);
            } else if (clsI == Long.TYPE) {
                this.f72001mv.j(47);
            } else if (clsI == Byte.TYPE) {
                this.f72001mv.j(51);
            }
            wrapPrimitive(clsI);
        } else {
            this.f72001mv.j(50);
        }
        return Array.get(obj, ((Integer) b.b(value, Integer.class)).intValue());
    }

    private Object getCollectionPropertyAO(Object obj, String str) throws IllegalAccessException, InvocationTargetException {
        if (str.length() > 0) {
            obj = getBeanProperty(obj, str);
            this.first = false;
        }
        this.currType = null;
        int i11 = this.cursor + 1;
        this.cursor = i11;
        skipWhitespace();
        if (this.cursor == this.end) {
            throw new CompileException("unterminated '['", this.expr, this.f71960st);
        }
        if (scanTo(']')) {
            throw new CompileException("unterminated '['", this.expr, this.f71960st);
        }
        String str2 = new String(this.expr, i11, this.cursor - i11);
        if (obj == null) {
            return null;
        }
        ExecutableStatement executableStatement = (ExecutableStatement) m.H0(str2.toCharArray());
        Object value = executableStatement.getValue(this.ctx, this.variableFactory);
        this.cursor++;
        if (obj instanceof Map) {
            if (k10.d.f(Map.class)) {
                return propHandlerByteCode(str2, obj, Map.class);
            }
            if (this.first) {
                this.f72001mv.F(25, 1);
            }
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "java/util/Map");
            Class clsWriteLiteralOrSubexpression = writeLiteralOrSubexpression(executableStatement);
            if (clsWriteLiteralOrSubexpression != null && clsWriteLiteralOrSubexpression.isPrimitive()) {
                wrapPrimitive(clsWriteLiteralOrSubexpression);
            }
            this.f72001mv.v(185, "java/util/Map", "get", "(Ljava/lang/Object;)Ljava/lang/Object;");
            return ((Map) obj).get(value);
        }
        if (obj instanceof List) {
            if (k10.d.f(List.class)) {
                return propHandlerByteCode(str2, obj, List.class);
            }
            if (this.first) {
                this.f72001mv.F(25, 1);
            }
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "java/util/List");
            writeLiteralOrSubexpression(executableStatement, Integer.TYPE);
            this.f72001mv.v(185, "java/util/List", "get", "(I)Ljava/lang/Object;");
            return ((List) obj).get(((Integer) b.b(value, Integer.class)).intValue());
        }
        if (obj.getClass().isArray()) {
            if (k10.d.f(Array.class)) {
                return propHandlerByteCode(str2, obj, Array.class);
            }
            if (this.first) {
                this.f72001mv.F(25, 1);
            }
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, y.f(obj.getClass()));
            Class cls = Integer.TYPE;
            writeLiteralOrSubexpression(executableStatement, cls, value.getClass());
            Class clsI = m.I(obj.getClass());
            if (clsI.isPrimitive()) {
                if (clsI == cls) {
                    this.f72001mv.j(46);
                } else if (clsI == Character.TYPE) {
                    this.f72001mv.j(52);
                } else if (clsI == Boolean.TYPE) {
                    this.f72001mv.j(51);
                } else if (clsI == Double.TYPE) {
                    this.f72001mv.j(49);
                } else if (clsI == Float.TYPE) {
                    this.f72001mv.j(48);
                } else if (clsI == Short.TYPE) {
                    this.f72001mv.j(53);
                } else if (clsI == Long.TYPE) {
                    this.f72001mv.j(47);
                } else if (clsI == Byte.TYPE) {
                    this.f72001mv.j(51);
                }
                wrapPrimitive(clsI);
            } else {
                this.f72001mv.j(50);
            }
            return Array.get(obj, ((Integer) b.b(value, Integer.class)).intValue());
        }
        if (!(obj instanceof CharSequence)) {
            char[] cArr = this.expr;
            int i12 = this.start;
            TypeDescriptor typeDescriptor = new TypeDescriptor(cArr, i12, this.end - i12, 0);
            if (typeDescriptor.isArray()) {
                try {
                    Class classReference = TypeDescriptor.getClassReference((Class) obj, typeDescriptor, this.variableFactory, this.pCtx);
                    ldcClassConstant(classReference);
                    return classReference;
                } catch (Exception unused) {
                }
            }
            throw new CompileException("illegal use of []: unknown type: " + obj.getClass().getName(), this.expr, this.f71960st);
        }
        if (k10.d.f(CharSequence.class)) {
            return propHandlerByteCode(str2, obj, CharSequence.class);
        }
        if (this.first) {
            this.f72001mv.F(25, 1);
        }
        this.f72001mv.E(PsExtractor.AUDIO_STREAM, "java/lang/CharSequence");
        if (value instanceof Integer) {
            Integer num = (Integer) value;
            intPush(num.intValue());
            this.f72001mv.v(185, "java/lang/CharSequence", "charAt", "(I)C");
            wrapPrimitive(Character.TYPE);
            return Character.valueOf(((CharSequence) obj).charAt(num.intValue()));
        }
        writeLiteralOrSubexpression(executableStatement, Integer.class);
        unwrapPrimitive(Integer.TYPE);
        this.f72001mv.v(185, "java/lang/CharSequence", "charAt", "(I)C");
        wrapPrimitive(Character.TYPE);
        return Character.valueOf(((CharSequence) obj).charAt(((Integer) b.b(value, Integer.class)).intValue()));
    }

    private a getContextClassLoader() {
        if (this.pCtx == null) {
            return null;
        }
        return new a(this.pCtx.getClassLoader());
    }

    public static k getMVELClassLoader() {
        return classLoader;
    }

    /* JADX WARN: Code duplicated, block: B:154:0x03b1  */
    /* JADX WARN: Code duplicated, block: B:156:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:159:0x03bc  */
    /* JADX WARN: Code duplicated, block: B:163:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:165:0x03d2  */
    /* JADX WARN: Code duplicated, block: B:167:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:170:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:172:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:173:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:176:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:188:0x0463  */
    /* JADX WARN: Code duplicated, block: B:190:0x0469  */
    /* JADX WARN: Code duplicated, block: B:193:0x046d  */
    /* JADX WARN: Code duplicated, block: B:195:0x0475  */
    /* JADX WARN: Code duplicated, block: B:202:0x0499  */
    /* JADX WARN: Code duplicated, block: B:205:0x049d A[LOOP:4: B:203:0x049a->B:205:0x049d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:208:0x04bd  */
    /* JADX WARN: Code duplicated, block: B:210:0x04c5  */
    /* JADX WARN: Code duplicated, block: B:211:0x04d7  */
    /* JADX WARN: Code duplicated, block: B:213:0x04e8  */
    /* JADX WARN: Code duplicated, block: B:214:0x04fc  */
    /* JADX WARN: Code duplicated, block: B:216:0x051e  */
    /* JADX WARN: Code duplicated, block: B:218:0x0526  */
    /* JADX WARN: Code duplicated, block: B:226:0x0558  */
    /* JADX WARN: Code duplicated, block: B:228:0x055f  */
    /* JADX WARN: Code duplicated, block: B:249:0x05b4  */
    /* JADX WARN: Code duplicated, block: B:251:0x05b8  */
    /* JADX WARN: Code duplicated, block: B:253:0x05cc  */
    /* JADX WARN: Code duplicated, block: B:254:0x05ce  */
    /* JADX WARN: Code duplicated, block: B:256:0x05d4  */
    /* JADX WARN: Code duplicated, block: B:258:0x05dc  */
    /* JADX WARN: Code duplicated, block: B:260:0x05e6  */
    /* JADX WARN: Code duplicated, block: B:262:0x05ee  */
    /* JADX WARN: Code duplicated, block: B:263:0x05f9  */
    /* JADX WARN: Code duplicated, block: B:265:0x0606  */
    /* JADX WARN: Code duplicated, block: B:267:0x060a  */
    /* JADX WARN: Code duplicated, block: B:268:0x0613  */
    /* JADX WARN: Code duplicated, block: B:270:0x061d  */
    /* JADX WARN: Code duplicated, block: B:272:0x0627  */
    /* JADX WARN: Code duplicated, block: B:273:0x062d  */
    /* JADX WARN: Code duplicated, block: B:275:0x0640  */
    /* JADX WARN: Code duplicated, block: B:323:0x03c1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:326:0x03f8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:331:0x0651 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:9:0x002b  */
    /* JADX WARN: Multi-variable type inference failed */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:231:0x056f
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    private java.lang.Object getMethod(java.lang.Object r26, java.lang.String r27) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instruction units count: 2054
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mvel2.optimizers.impl.asm.ASMAccessorOptimizer.getMethod(java.lang.Object, java.lang.String):java.lang.Object");
    }

    private Object getWithProperty(Object obj) {
        if (this.first) {
            this.f72001mv.F(25, 1);
            this.first = false;
        }
        String strTrim = new String(this.expr, 0, this.cursor - 1).trim();
        int i11 = this.cursor;
        int i12 = i11 + 1;
        this.cursor = m.e(this.expr, i11, this.end, '{', this.pCtx);
        this.returnType = obj != null ? obj.getClass() : null;
        char[] cArr = this.expr;
        int i13 = this.cursor;
        this.cursor = i13 + 1;
        for (WithNode.ParmValuePair parmValuePair : WithNode.compileWithExpressions(cArr, i12, i13 - i12, strTrim, this.ingressType, this.pCtx)) {
            this.f72001mv.j(89);
            this.f72001mv.F(58, this.compileDepth + 5);
            parmValuePair.eval(obj, this.variableFactory);
            if (parmValuePair.getSetExpression() == null) {
                addSubstatement(parmValuePair.getStatement());
            } else {
                this.compiledInputs.add((ExecutableStatement) parmValuePair.getSetExpression());
                this.f72001mv.F(25, 0);
                this.f72001mv.g(180, this.className, TtmlNode.TAG_P + (this.compiledInputs.size() - 1), "L" + NAMESPACE + "compiler/ExecutableStatement;");
                this.f72001mv.F(25, this.compileDepth + 5);
                this.f72001mv.F(25, 2);
                this.f72001mv.F(25, 3);
                addSubstatement(parmValuePair.getStatement());
                this.f72001mv.v(185, NAMESPACE + "compiler/ExecutableStatement", "setValue", "(Ljava/lang/Object;Ljava/lang/Object;L" + NAMESPACE + "integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;");
                this.f72001mv.j(87);
            }
        }
        return obj;
    }

    private Class getWrapperClass(Class cls) {
        if (cls == Boolean.TYPE) {
            return Boolean.class;
        }
        if (cls == Integer.TYPE) {
            return Integer.class;
        }
        if (cls == Float.TYPE) {
            return Float.class;
        }
        if (cls == Double.TYPE) {
            return Double.class;
        }
        if (cls == Short.TYPE) {
            return Short.class;
        }
        if (cls == Long.TYPE) {
            return Long.class;
        }
        if (cls == Byte.TYPE) {
            return Byte.class;
        }
        return cls == Character.TYPE ? Character.class : cls;
    }

    private void intPush(int i11) {
        if (i11 < 0 || i11 >= 6) {
            if (i11 > -127 && i11 < 128) {
                this.f72001mv.l(16, i11);
                return;
            } else if (i11 > 32767) {
                this.f72001mv.p(Integer.valueOf(i11));
                return;
            } else {
                this.f72001mv.l(17, i11);
                return;
            }
        }
        if (i11 == 0) {
            this.f72001mv.j(3);
            return;
        }
        if (i11 == 1) {
            this.f72001mv.j(4);
            return;
        }
        if (i11 == 2) {
            this.f72001mv.j(5);
            return;
        }
        if (i11 == 3) {
            this.f72001mv.j(6);
        } else if (i11 == 4) {
            this.f72001mv.j(7);
        } else {
            if (i11 != 5) {
                return;
            }
            this.f72001mv.j(8);
        }
    }

    private void ldcClassConstant(Class cls) {
        if (OPCODES_VERSION != 48) {
            this.f72001mv.p(y.m(cls));
            return;
        }
        this.f72001mv.p(cls.getName());
        this.f72001mv.v(184, "java/lang/Class", "forName", "(Ljava/lang/String;)Ljava/lang/Class;");
        q qVar = new q();
        this.f72001mv.n(167, qVar);
        this.f72001mv.E(187, "java/lang/NoClassDefFoundError");
        this.f72001mv.j(90);
        this.f72001mv.j(95);
        this.f72001mv.v(182, "java/lang/Throwable", "getMessage", "()Ljava/lang/String;");
        this.f72001mv.v(183, "java/lang/NoClassDefFoundError", "<init>", "(Ljava/lang/String;)V");
        this.f72001mv.j(191);
        this.f72001mv.o(qVar);
    }

    private Class loadClass(String str, byte[] bArr) throws Exception {
        a contextClassLoader = getContextClassLoader();
        return contextClassLoader == null ? classLoader.a(str, bArr, 0, bArr.length) : contextClassLoader.a(str, bArr);
    }

    private void loadField(int i11) {
        this.f72001mv.F(25, 0);
        this.f72001mv.g(180, this.className, TtmlNode.TAG_P + i11, "L" + NAMESPACE + "compiler/ExecutableStatement;");
    }

    private void loadVariableByIndex(int i11) {
        this.f72001mv.F(25, 3);
        intPush(i11);
        this.f72001mv.v(185, "" + NAMESPACE + "integration/VariableResolverFactory", "getIndexedVariableResolver", "(I)L" + NAMESPACE + "integration/VariableResolver;");
        this.f72001mv.v(185, "" + NAMESPACE + "integration/VariableResolver", "getValue", "()Ljava/lang/Object;");
        this.returnType = Object.class;
    }

    private void loadVariableByName(String str) {
        this.f72001mv.F(25, 3);
        this.f72001mv.p(str);
        this.f72001mv.v(185, "" + NAMESPACE + "integration/VariableResolverFactory", "getVariableResolver", "(Ljava/lang/String;)L" + NAMESPACE + "integration/VariableResolver;");
        this.f72001mv.v(185, "" + NAMESPACE + "integration/VariableResolver", "getValue", "()Ljava/lang/Object;");
        this.returnType = Object.class;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Object optimizeFieldMethodProperty(Object obj, String str, Class<?> cls, Member member) throws IllegalAccessException {
        Object obj2 = ((Field) member).get(obj);
        if ((member.getModifiers() & 8) == 0) {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, y.h(cls));
            r rVar = this.f72001mv;
            String strH = y.h(cls);
            Class<?> type = ((Field) member).getType();
            this.returnType = type;
            rVar.g(180, strH, str, y.f(type));
        } else {
            if ((member.getModifiers() & 16) != 0 && ((obj2 instanceof String) || ((Field) member).getType().isPrimitive())) {
                Object obj3 = ((Field) member).get(null);
                this.f72001mv.p(obj3);
                wrapPrimitive(obj3.getClass());
                if (k10.d.e()) {
                    writeOutNullHandler(member, 0);
                }
                return obj3;
            }
            r rVar2 = this.f72001mv;
            String strH2 = y.h(member.getDeclaringClass());
            String name = member.getName();
            Class<?> type2 = ((Field) member).getType();
            this.returnType = type2;
            rVar2.g(178, strH2, name, y.f(type2));
        }
        this.returnType = ((Field) member).getType();
        if (k10.d.e()) {
            if (obj2 == null) {
                k10.d.b();
                member.getName();
                throw null;
            }
            writeOutNullHandler(member, 0);
        }
        this.currType = p.i(this.returnType);
        return obj2;
    }

    private Object propHandlerByteCode(String str, Object obj, Class cls) {
        k10.d.c(cls);
        new StringBuilder().append("unable to compileShared: custom accessor does not support producing bytecode: ");
        throw null;
    }

    private void propHandlerByteCodePut(String str, Object obj, Class cls, Object obj2) {
        k10.d.c(cls);
        new StringBuilder().append("unable to compileShared: custom accessor does not support producing bytecode: ");
        throw null;
    }

    public static void setMVELClassLoader(k kVar) {
        classLoader = kVar;
    }

    public static int toPrimitiveTypeOperand(Class<?> cls) {
        if (cls == Integer.TYPE) {
            return 10;
        }
        if (cls == Long.TYPE) {
            return 11;
        }
        if (cls == Double.TYPE) {
            return 7;
        }
        if (cls == Float.TYPE) {
            return 6;
        }
        if (cls == Short.TYPE) {
            return 9;
        }
        if (cls == Byte.TYPE) {
            return 8;
        }
        if (cls == Character.TYPE) {
            return 5;
        }
        if (cls == Boolean.TYPE) {
            return 4;
        }
        throw new IllegalStateException("Non-primitive type passed to toPrimitiveTypeOperand: " + cls);
    }

    private void unwrapPrimitive(Class cls) {
        if (cls == Boolean.TYPE) {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "java/lang/Boolean");
            this.f72001mv.v(182, "java/lang/Boolean", "booleanValue", "()Z");
            return;
        }
        if (cls == Integer.TYPE) {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "java/lang/Integer");
            this.f72001mv.v(182, "java/lang/Integer", "intValue", "()I");
            return;
        }
        if (cls == Float.TYPE) {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "java/lang/Float");
            this.f72001mv.v(182, "java/lang/Float", "floatValue", "()F");
            return;
        }
        if (cls == Double.TYPE) {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "java/lang/Double");
            this.f72001mv.v(182, "java/lang/Double", "doubleValue", "()D");
            return;
        }
        if (cls == Short.TYPE) {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "java/lang/Short");
            this.f72001mv.v(182, "java/lang/Short", "shortValue", "()S");
            return;
        }
        if (cls == Long.TYPE) {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "java/lang/Long");
            this.f72001mv.v(182, "java/lang/Long", "longValue", "()J");
        } else if (cls == Byte.TYPE) {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "java/lang/Byte");
            this.f72001mv.v(182, "java/lang/Byte", "byteValue", "()B");
        } else if (cls == Character.TYPE) {
            this.f72001mv.E(PsExtractor.AUDIO_STREAM, "java/lang/Character");
            this.f72001mv.v(182, "java/lang/Character", "charValue", "()C");
        }
    }

    private void visitConstantClass(Class<?> cls) {
        if (cls == null) {
            cls = Object.class;
        }
        if (cls.isPrimitive()) {
            this.f72001mv.g(178, p.i(cls).getName().replace(".", "/"), "TYPE", "Ljava/lang/Class;");
        } else {
            this.f72001mv.p(y.m(cls));
        }
    }

    private void wrapPrimitive(Class<? extends Object> cls) {
        if (OPCODES_VERSION != 48) {
            if (cls == Boolean.TYPE || cls == Boolean.class) {
                debug("INVOKESTATIC java/lang/Boolean.valueOf");
                this.f72001mv.v(184, "java/lang/Boolean", "valueOf", "(Z)Ljava/lang/Boolean;");
                return;
            }
            if (cls == Integer.TYPE || cls == Integer.class) {
                debug("INVOKESTATIC java/lang/Integer.valueOf");
                this.f72001mv.v(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                return;
            }
            if (cls == Float.TYPE || cls == Float.class) {
                debug("INVOKESTATIC java/lang/Float.valueOf");
                this.f72001mv.v(184, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
                return;
            }
            if (cls == Double.TYPE || cls == Double.class) {
                debug("INVOKESTATIC java/lang/Double.valueOf");
                this.f72001mv.v(184, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
                return;
            }
            if (cls == Short.TYPE || cls == Short.class) {
                debug("INVOKESTATIC java/lang/Short.valueOf");
                this.f72001mv.v(184, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
                return;
            }
            if (cls == Long.TYPE || cls == Long.class) {
                debug("INVOKESTATIC java/lang/Long.valueOf");
                this.f72001mv.v(184, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
                return;
            } else if (cls == Byte.TYPE || cls == Byte.class) {
                debug("INVOKESTATIC java/lang/Byte.valueOf");
                this.f72001mv.v(184, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
                return;
            } else {
                if (cls == Character.TYPE || cls == Character.class) {
                    debug("INVOKESTATIC java/lang/Character.valueOf");
                    this.f72001mv.v(184, "java/lang/Character", "valueOf", "(C)Ljava/lang/Character;");
                    return;
                }
                return;
            }
        }
        debug("** Using 1.4 Bytecode **");
        if (cls == Boolean.TYPE || cls == Boolean.class) {
            debug("NEW java/lang/Boolean");
            this.f72001mv.E(187, "java/lang/Boolean");
            debug("DUP X1");
            this.f72001mv.j(90);
            debug("SWAP");
            this.f72001mv.j(95);
            debug("INVOKESPECIAL java/lang/Boolean.<init>::(Z)V");
            this.f72001mv.v(183, "java/lang/Boolean", "<init>", "(Z)V");
            return;
        }
        if (cls == Integer.TYPE || cls == Integer.class) {
            debug("NEW java/lang/Integer");
            this.f72001mv.E(187, "java/lang/Integer");
            debug("DUP X1");
            this.f72001mv.j(90);
            debug("SWAP");
            this.f72001mv.j(95);
            debug("INVOKESPECIAL java/lang/Integer.<init>::(I)V");
            this.f72001mv.v(183, "java/lang/Integer", "<init>", "(I)V");
            return;
        }
        if (cls == Float.TYPE || cls == Float.class) {
            debug("NEW java/lang/Float");
            this.f72001mv.E(187, "java/lang/Float");
            debug("DUP X1");
            this.f72001mv.j(90);
            debug("SWAP");
            this.f72001mv.j(95);
            debug("INVOKESPECIAL java/lang/Float.<init>::(F)V");
            this.f72001mv.v(183, "java/lang/Float", "<init>", "(F)V");
            return;
        }
        if (cls == Double.TYPE || cls == Double.class) {
            debug("NEW java/lang/Double");
            this.f72001mv.E(187, "java/lang/Double");
            debug("DUP X2");
            this.f72001mv.j(91);
            debug("DUP X2");
            this.f72001mv.j(91);
            debug("POP");
            this.f72001mv.j(87);
            debug("INVOKESPECIAL java/lang/Double.<init>::(D)V");
            this.f72001mv.v(183, "java/lang/Double", "<init>", "(D)V");
            return;
        }
        if (cls == Short.TYPE || cls == Short.class) {
            debug("NEW java/lang/Short");
            this.f72001mv.E(187, "java/lang/Short");
            debug("DUP X1");
            this.f72001mv.j(90);
            debug("SWAP");
            this.f72001mv.j(95);
            debug("INVOKESPECIAL java/lang/Short.<init>::(S)V");
            this.f72001mv.v(183, "java/lang/Short", "<init>", "(S)V");
            return;
        }
        if (cls == Long.TYPE || cls == Long.class) {
            debug("NEW java/lang/Long");
            this.f72001mv.E(187, "java/lang/Long");
            debug("DUP X1");
            this.f72001mv.j(90);
            debug("SWAP");
            this.f72001mv.j(95);
            debug("INVOKESPECIAL java/lang/Long.<init>::(L)V");
            this.f72001mv.v(183, "java/lang/Float", "<init>", "(L)V");
            return;
        }
        if (cls == Byte.TYPE || cls == Byte.class) {
            debug("NEW java/lang/Byte");
            this.f72001mv.E(187, "java/lang/Byte");
            debug("DUP X1");
            this.f72001mv.j(90);
            debug("SWAP");
            this.f72001mv.j(95);
            debug("INVOKESPECIAL java/lang/Byte.<init>::(B)V");
            this.f72001mv.v(183, "java/lang/Byte", "<init>", "(B)V");
            return;
        }
        if (cls == Character.TYPE || cls == Character.class) {
            debug("NEW java/lang/Character");
            this.f72001mv.E(187, "java/lang/Character");
            debug("DUP X1");
            this.f72001mv.j(90);
            debug("SWAP");
            this.f72001mv.j(95);
            debug("INVOKESPECIAL java/lang/Character.<init>::(C)V");
            this.f72001mv.v(183, "java/lang/Character", "<init>", "(C)V");
        }
    }

    private void writeFunctionPointerStub(Class cls, Method method) {
        ldcClassConstant(cls);
        this.f72001mv.v(182, "java/lang/Class", "getMethods", "()[Ljava/lang/reflect/Method;");
        this.f72001mv.F(58, 7);
        this.f72001mv.j(3);
        this.f72001mv.F(54, 5);
        this.f72001mv.F(25, 7);
        this.f72001mv.j(190);
        this.f72001mv.F(54, 6);
        q qVar = new q();
        this.f72001mv.n(167, qVar);
        q qVar2 = new q();
        this.f72001mv.o(qVar2);
        this.f72001mv.F(25, 7);
        this.f72001mv.F(21, 5);
        this.f72001mv.j(50);
        this.f72001mv.F(58, 4);
        this.f72001mv.o(new q());
        this.f72001mv.p(method.getName());
        this.f72001mv.F(25, 4);
        this.f72001mv.v(182, "java/lang/reflect/Method", "getName", "()Ljava/lang/String;");
        this.f72001mv.v(182, "java/lang/String", "equals", "(Ljava/lang/Object;)Z");
        q qVar3 = new q();
        this.f72001mv.n(153, qVar3);
        this.f72001mv.o(new q());
        this.f72001mv.F(25, 4);
        this.f72001mv.j(176);
        this.f72001mv.o(qVar3);
        this.f72001mv.i(5, 1);
        this.f72001mv.o(qVar);
        this.f72001mv.F(21, 5);
        this.f72001mv.F(21, 6);
        this.f72001mv.n(161, qVar2);
        this.f72001mv.o(new q());
        this.f72001mv.j(1);
        this.f72001mv.j(176);
    }

    private Class writeLiteralOrSubexpression(Object obj) {
        return writeLiteralOrSubexpression(obj, null, null);
    }

    private Class writeLiteralOrSubexpression(Object obj, Class cls) {
        return writeLiteralOrSubexpression(obj, cls, null);
    }

    private Class writeLiteralOrSubexpression(Object obj, Class cls, Class cls2) {
        Class cls3;
        if (!(obj instanceof ExecutableLiteral)) {
            this.literal = false;
            ExecutableStatement executableStatement = (ExecutableStatement) obj;
            addSubstatement(executableStatement);
            if (cls2 == null) {
                cls2 = executableStatement.getKnownEgressType();
            }
            if (cls != null && cls2 != cls && cls.isPrimitive()) {
                if (cls2 == null) {
                    throw new OptimizationFailure("cannot optimize expression: " + new String(this.expr) + ": cannot determine ingress type for primitive output");
                }
                checkcast(cls2);
                unwrapPrimitive(cls);
            }
            return cls2;
        }
        ExecutableLiteral executableLiteral = (ExecutableLiteral) obj;
        Object literal = executableLiteral.getLiteral();
        if (literal == null) {
            this.f72001mv.j(1);
            return null;
        }
        Class<?> cls4 = literal.getClass();
        if (cls4 == Integer.class && cls == (cls3 = Integer.TYPE)) {
            intPush(executableLiteral.getInteger32());
            return cls3;
        }
        if (cls == null || cls == cls4) {
            writeOutLiteralWrapped(literal);
            return cls4;
        }
        if (b.a(cls4, cls)) {
            writeOutLiteralWrapped(b.b(literal, cls));
            return cls4;
        }
        throw new CompileException("was expecting type: " + cls.getName() + "; but found type: " + cls4.getName(), this.expr, this.f71960st);
    }

    private void writeOutLiteralWrapped(Object obj) {
        if (obj instanceof Integer) {
            intPush(((Integer) obj).intValue());
            wrapPrimitive(Integer.TYPE);
            return;
        }
        if (obj instanceof String) {
            this.f72001mv.p(obj);
            return;
        }
        if (obj instanceof Long) {
            this.f72001mv.p(obj);
            wrapPrimitive(Long.TYPE);
            return;
        }
        if (obj instanceof Float) {
            this.f72001mv.p(obj);
            wrapPrimitive(Float.TYPE);
            return;
        }
        if (obj instanceof Double) {
            this.f72001mv.p(obj);
            wrapPrimitive(Double.TYPE);
            return;
        }
        if (obj instanceof Short) {
            this.f72001mv.p(obj);
            wrapPrimitive(Short.TYPE);
            return;
        }
        if (obj instanceof Character) {
            this.f72001mv.p(obj);
            wrapPrimitive(Character.TYPE);
        } else if (obj instanceof Boolean) {
            this.f72001mv.p(obj);
            wrapPrimitive(Boolean.TYPE);
        } else if (obj instanceof Byte) {
            this.f72001mv.p(obj);
            wrapPrimitive(Byte.TYPE);
        }
    }

    private void writeOutNullHandler(Member member, int i11) {
        this.f72001mv.j(89);
        q qVar = new q();
        this.f72001mv.n(199, qVar);
        this.f72001mv.j(87);
        this.f72001mv.F(25, 0);
        if (i11 == 0) {
            this.propNull = true;
            this.f72001mv.g(180, this.className, "nullPropertyHandler", "L" + NAMESPACE + "integration/PropertyHandler;");
        } else {
            this.methNull = true;
            this.f72001mv.g(180, this.className, "nullMethodHandler", "L" + NAMESPACE + "integration/PropertyHandler;");
        }
        this.f72001mv.p(member.getName());
        this.f72001mv.F(25, 1);
        this.f72001mv.F(25, 3);
        this.f72001mv.v(185, NAMESPACE + "integration/PropertyHandler", "getProperty", "(Ljava/lang/String;Ljava/lang/Object;L" + NAMESPACE + "integration/VariableResolverFactory;)Ljava/lang/Object;");
        this.f72001mv.o(qVar);
    }

    public void arrayStore(Class cls) {
        if (!cls.isPrimitive()) {
            this.f72001mv.j(83);
            return;
        }
        if (cls == Integer.TYPE) {
            this.f72001mv.j(79);
            return;
        }
        if (cls == Character.TYPE) {
            this.f72001mv.j(85);
            return;
        }
        if (cls == Boolean.TYPE) {
            this.f72001mv.j(84);
            return;
        }
        if (cls == Double.TYPE) {
            this.f72001mv.j(82);
            return;
        }
        if (cls == Float.TYPE) {
            this.f72001mv.j(81);
            return;
        }
        if (cls == Short.TYPE) {
            this.f72001mv.j(86);
        } else if (cls == Long.TYPE) {
            this.f72001mv.j(80);
        } else if (cls == Byte.TYPE) {
            this.f72001mv.j(84);
        }
    }

    @Override // org.mvel2.optimizers.a
    public Class getEgressType() {
        return this.returnType;
    }

    public String getName() {
        return "ASM";
    }

    @Override // org.mvel2.optimizers.a
    public Object getResultOptPass() {
        return this.val;
    }

    @Override // org.mvel2.optimizers.a
    public void init() {
        try {
            classLoader = new i(Thread.currentThread().getContextClassLoader());
        } catch (Exception e11) {
            throw new RuntimeException(e11);
        }
    }

    @Override // org.mvel2.optimizers.a
    public boolean isLiteralOnly() {
        return this.literal;
    }

    @Override // org.mvel2.optimizers.a
    public org.mvel2.compiler.a optimizeAccessor(ParserContext parserContext, char[] cArr, int i11, int i12, Object obj, Object obj2, VariableResolverFactory variableResolverFactory, boolean z10, Class cls) {
        this.time = System.currentTimeMillis();
        if (this.compiledInputs == null) {
            this.compiledInputs = new ArrayList<>();
        }
        this.cursor = i11;
        this.start = i11;
        int i13 = i12 + i11;
        this.end = i13;
        this.length = i13 - i11;
        this.first = true;
        this.val = null;
        this.pCtx = parserContext;
        this.expr = cArr;
        this.ctx = obj;
        this.thisRef = obj2;
        this.variableFactory = variableResolverFactory;
        this.ingressType = cls;
        if (!this.noinit) {
            _initJIT();
        }
        return compileAccessor();
    }

    @Override // org.mvel2.optimizers.a
    public org.mvel2.compiler.a optimizeCollection(ParserContext parserContext, Object obj, Class cls, char[] cArr, int i11, int i12, Object obj2, Object obj3, VariableResolverFactory variableResolverFactory) {
        int i13;
        this.expr = cArr;
        this.start = i11;
        this.cursor = i11;
        this.end = i11 + i12;
        this.length = i12;
        this.returnType = cls;
        this.compiledInputs = new ArrayList<>();
        this.ctx = obj2;
        this.thisRef = obj3;
        this.variableFactory = variableResolverFactory;
        this.pCtx = parserContext;
        _initJIT();
        this.literal = true;
        _getAccessor(obj, cls);
        _finishJIT();
        try {
            org.mvel2.compiler.a aVar_initializeAccessor = _initializeAccessor();
            return (cArr == null || (i13 = this.length) <= i11) ? aVar_initializeAccessor : new org.mvel2.optimizers.impl.refl.nodes.a(parserContext, aVar_initializeAccessor, cArr, i11, i13);
        } catch (Exception e11) {
            throw new OptimizationFailure("could not optimize collection", e11);
        }
    }

    @Override // org.mvel2.optimizers.a
    public org.mvel2.compiler.a optimizeObjectCreation(ParserContext parserContext, char[] cArr, int i11, int i12, Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        String str;
        String str2;
        Object[] objArr;
        _initJIT();
        this.compiledInputs = new ArrayList<>();
        this.cursor = i11;
        this.start = i11;
        int i13 = i11 + i12;
        this.end = i13;
        this.length = i13 - i11;
        this.ctx = obj;
        this.thisRef = obj2;
        this.variableFactory = variableResolverFactory;
        this.pCtx = parserContext;
        String[] strArrG = m.g(cArr, i11, i12);
        List listW0 = m.w0(strArrG[0].toCharArray());
        int i14 = 89;
        try {
            if (listW0 == null) {
                Class clsD = m.D(variableResolverFactory, new String(cArr), parserContext);
                this.f72001mv.E(187, y.h(clsD));
                this.f72001mv.j(89);
                this.f72001mv.v(183, y.h(clsD), "<init>", y.d(clsD.getConstructor(EMPTYCLS)));
                _finishJIT();
                org.mvel2.compiler.a aVar_initializeAccessor = _initializeAccessor();
                return (strArrG.length <= 1 || (str = strArrG[1]) == null || str.trim().equals("")) ? aVar_initializeAccessor : new org.mvel2.optimizers.impl.refl.nodes.a(parserContext, aVar_initializeAccessor, strArrG[1].toCharArray(), 0, strArrG[1].length());
            }
            Iterator it = listW0.iterator();
            while (it.hasNext()) {
                this.compiledInputs.add((ExecutableStatement) m.J0((char[]) it.next(), parserContext));
            }
            Class clsD2 = m.D(variableResolverFactory, new String(m.K0(cArr, 0, org.mvel2.util.b.a('(', i11, this.length, cArr))), parserContext);
            this.f72001mv.E(187, y.h(clsD2));
            this.f72001mv.j(89);
            int size = listW0.size();
            Object[] objArr2 = new Object[size];
            Iterator<ExecutableStatement> it2 = this.compiledInputs.iterator();
            int i15 = 0;
            while (it2.hasNext()) {
                objArr2[i15] = it2.next().getValue(obj, variableResolverFactory);
                i15++;
            }
            Constructor constructorN = m.N(objArr2, clsD2, parserContext.isStrongTyping());
            if (constructorN == null) {
                StringBuilder sb2 = new StringBuilder();
                int i16 = 0;
                while (i16 < size) {
                    sb2.append(objArr2[i16].getClass().getName());
                    i16++;
                    if (i16 < size) {
                        sb2.append(", ");
                    }
                }
                throw new CompileException("unable to find constructor: " + clsD2.getName() + "(" + sb2.toString() + ")", this.expr, this.f71960st);
            }
            this.returnType = constructorN.getDeclaringClass();
            constructorN.getParameterTypes();
            Class<?> clsI = null;
            int i17 = -1;
            int i18 = 0;
            while (i18 < listW0.size()) {
                if (i18 < constructorN.getParameterTypes().length) {
                    clsI = constructorN.getParameterTypes()[i18];
                    if (constructorN.isVarArgs() && i18 == constructorN.getParameterTypes().length - 1) {
                        clsI = m.I(clsI);
                        createArray(clsI, listW0.size() - i18);
                        i17 = i18;
                    }
                } else if (i17 < 0 || clsI == null) {
                    throw new IllegalStateException("Incorrect argument count " + i18);
                }
                if (i17 >= 0) {
                    this.f72001mv.j(i14);
                    intPush(i18 - i17);
                }
                this.f72001mv.F(25, 0);
                r rVar = this.f72001mv;
                String str3 = this.className;
                StringBuilder sb3 = new StringBuilder();
                List list = listW0;
                sb3.append(TtmlNode.TAG_P);
                sb3.append(i18);
                rVar.g(180, str3, sb3.toString(), "L" + NAMESPACE + "compiler/ExecutableStatement;");
                this.f72001mv.F(25, 2);
                this.f72001mv.F(25, 3);
                this.f72001mv.v(185, "" + NAMESPACE + "compiler/ExecutableStatement", "getValue", "(Ljava/lang/Object;L" + NAMESPACE + "integration/VariableResolverFactory;)Ljava/lang/Object;");
                Class<?> wrapperClass = clsI.isPrimitive() ? getWrapperClass(clsI) : clsI;
                Object obj3 = objArr2[i18];
                if (obj3 == null || obj3.getClass().isAssignableFrom(clsI)) {
                    objArr = objArr2;
                    this.f72001mv.E(PsExtractor.AUDIO_STREAM, y.h(clsI));
                } else {
                    ldcClassConstant(wrapperClass);
                    objArr = objArr2;
                    this.f72001mv.v(184, "" + NAMESPACE + "DataConversion", "convert", "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;");
                    if (clsI.isPrimitive()) {
                        unwrapPrimitive(clsI);
                    } else {
                        this.f72001mv.E(PsExtractor.AUDIO_STREAM, y.h(wrapperClass));
                    }
                }
                if (i17 >= 0) {
                    arrayStore(clsI);
                }
                i18++;
                listW0 = list;
                objArr2 = objArr;
                i14 = 89;
            }
            this.f72001mv.v(183, y.h(clsD2), "<init>", y.d(constructorN));
            _finishJIT();
            org.mvel2.compiler.a aVar_initializeAccessor2 = _initializeAccessor();
            return (strArrG.length <= 1 || (str2 = strArrG[1]) == null || str2.trim().equals("")) ? aVar_initializeAccessor2 : new org.mvel2.optimizers.impl.refl.nodes.a(parserContext, aVar_initializeAccessor2, strArrG[1].toCharArray(), 0, strArrG[1].length());
        } catch (ClassNotFoundException unused) {
            throw new CompileException("class or class reference not found: " + new String(cArr), cArr, this.f71960st);
        } catch (Exception e11) {
            throw new OptimizationFailure("could not optimize construtor: " + new String(cArr), e11);
        }
    }

    @Override // org.mvel2.optimizers.a
    public org.mvel2.compiler.a optimizeSetAccessor(ParserContext parserContext, char[] cArr, int i11, int i12, Object obj, Object obj2, VariableResolverFactory variableResolverFactory, boolean z10, Object obj3, Class cls) {
        Object obj4;
        InvocationTargetException invocationTargetException;
        IllegalAccessException illegalAccessException;
        Object objG = obj3;
        this.expr = cArr;
        this.cursor = i11;
        this.start = i11;
        int i13 = i11 + i12;
        this.end = i13;
        this.length = i13;
        this.first = true;
        this.ingressType = cls;
        this.compiledInputs = new ArrayList<>();
        this.ctx = obj;
        this.thisRef = obj2;
        this.variableFactory = variableResolverFactory;
        this.pCtx = parserContext;
        PropertyVerifier propertyVerifier = new PropertyVerifier(cArr, parserContext);
        int iFindLastUnion = findLastUnion();
        q qVar = null;
        char[] cArrK0 = iFindLastUnion != -1 ? m.K0(cArr, 0, iFindLastUnion) : null;
        _initJIT2();
        if (cArrK0 != null) {
            int i14 = this.length;
            char[] cArr2 = this.expr;
            this.expr = cArrK0;
            int length = cArrK0.length;
            this.end = length;
            this.length = length;
            this.deferFinish = true;
            this.noinit = true;
            compileAccessor();
            obj4 = this.val;
            this.expr = cArr2;
            int length2 = cArrK0.length + i11 + 1;
            this.cursor = length2;
            int length3 = (i14 - cArrK0.length) - 1;
            this.length = length3;
            this.end = length2 + length3;
        } else {
            this.f72001mv.F(25, 1);
            obj4 = obj;
        }
        try {
            skipWhitespace();
            try {
                if (!this.collection) {
                    char[] cArr3 = this.expr;
                    int i15 = this.cursor;
                    String str = new String(cArr3, i15, this.end - i15);
                    Member memberD = n.d(obj4.getClass(), str, objG == null ? null : cls);
                    if (k10.a.b()) {
                        try {
                            this.f72001mv.F(25, 1);
                            this.f72001mv.p(str);
                            this.f72001mv.F(25, 3);
                            this.f72001mv.F(25, 4);
                            this.f72001mv.v(184, NAMESPACE + "integration/GlobalListenerFactory", "notifySetListeners", "(Ljava/lang/Object;Ljava/lang/String;L" + NAMESPACE + "integration/VariableResolverFactory;Ljava/lang/Object;)V");
                            k10.a.d(obj4, str, this.variableFactory, objG);
                        } catch (IllegalAccessException e11) {
                            e = e11;
                            illegalAccessException = e;
                            throw new PropertyAccessException("could not access property", this.expr, i11, illegalAccessException, parserContext);
                        } catch (InvocationTargetException e12) {
                            e = e12;
                            invocationTargetException = e;
                            throw new PropertyAccessException("could not access property", this.expr, i11, invocationTargetException, parserContext);
                        }
                    }
                    if (memberD instanceof Field) {
                        checkcast(obj4.getClass());
                        Field field = (Field) memberD;
                        q qVar2 = new q();
                        if (field.getType().isPrimitive()) {
                            this.f72001mv.F(58, 5);
                            this.f72001mv.F(25, 4);
                            if (objG == null) {
                                objG = n.g(field.getType());
                            }
                            q qVar3 = new q();
                            this.f72001mv.n(199, qVar3);
                            this.f72001mv.F(25, 5);
                            this.f72001mv.j(3);
                            this.f72001mv.g(181, y.h(field.getDeclaringClass()), str, y.f(field.getType()));
                            this.f72001mv.n(167, qVar2);
                            this.f72001mv.o(qVar3);
                            this.f72001mv.F(25, 5);
                            this.f72001mv.F(25, 4);
                            unwrapPrimitive(field.getType());
                            qVar = qVar3;
                        } else {
                            this.f72001mv.F(25, 4);
                            checkcast(field.getType());
                        }
                        if (qVar != null || objG == null || field.getType().isAssignableFrom(objG.getClass())) {
                            field.set(obj4, objG);
                        } else {
                            if (!b.a(field.getType(), objG.getClass())) {
                                throw new CompileException("cannot convert type: " + objG.getClass() + ": to " + field.getType(), this.expr, i11);
                            }
                            dataConversion(field.getType());
                            field.set(obj4, b.b(objG, field.getType()));
                        }
                        this.f72001mv.g(181, y.h(field.getDeclaringClass()), str, y.f(field.getType()));
                        this.f72001mv.o(qVar2);
                        this.f72001mv.F(25, 4);
                    } else if (memberD != null) {
                        this.f72001mv.E(PsExtractor.AUDIO_STREAM, y.h(obj4.getClass()));
                        Method method = (Method) memberD;
                        this.f72001mv.F(25, 4);
                        Class<?> cls2 = method.getParameterTypes()[0];
                        q qVar4 = new q();
                        if (objG == null || cls2.isAssignableFrom(obj3.getClass())) {
                            if (cls2.isPrimitive()) {
                                if (objG == null) {
                                    objG = n.g(cls2);
                                }
                                q qVar5 = new q();
                                this.f72001mv.n(199, qVar5);
                                this.f72001mv.j(3);
                                this.f72001mv.v(182, y.h(method.getDeclaringClass()), method.getName(), y.i(method));
                                this.f72001mv.n(167, qVar4);
                                this.f72001mv.o(qVar5);
                                this.f72001mv.F(25, 4);
                                unwrapPrimitive(cls2);
                            } else {
                                checkcast(cls2);
                            }
                            try {
                                method.invoke(obj4, objG);
                                this.f72001mv.v(182, y.h(method.getDeclaringClass()), method.getName(), y.i(method));
                                this.f72001mv.o(qVar4);
                                this.f72001mv.F(25, 4);
                            } catch (IllegalAccessException e13) {
                                e = e13;
                                illegalAccessException = e;
                                throw new PropertyAccessException("could not access property", this.expr, i11, illegalAccessException, parserContext);
                            } catch (InvocationTargetException e14) {
                                e = e14;
                                invocationTargetException = e;
                                throw new PropertyAccessException("could not access property", this.expr, i11, invocationTargetException, parserContext);
                            }
                        } else {
                            if (!b.a(cls2, obj3.getClass())) {
                                throw new CompileException("cannot convert type: " + obj3.getClass() + ": to " + method.getParameterTypes()[0], this.expr, i11);
                            }
                            dataConversion(getWrapperClass(cls2));
                            if (cls2.isPrimitive()) {
                                unwrapPrimitive(cls2);
                            } else {
                                checkcast(cls2);
                            }
                            try {
                                method.invoke(obj4, b.b(objG, method.getParameterTypes()[0]));
                                this.f72001mv.v(182, y.h(method.getDeclaringClass()), method.getName(), y.i(method));
                                this.f72001mv.o(qVar4);
                                this.f72001mv.F(25, 4);
                            } catch (IllegalAccessException e15) {
                                e = e15;
                                illegalAccessException = e;
                                throw new PropertyAccessException("could not access property", this.expr, i11, illegalAccessException, parserContext);
                            } catch (InvocationTargetException e16) {
                                e = e16;
                                invocationTargetException = e;
                                throw new PropertyAccessException("could not access property", this.expr, i11, invocationTargetException, parserContext);
                            }
                        }
                    } else {
                        if (!(obj4 instanceof Map)) {
                            try {
                                throw new PropertyAccessException("could not access property (" + str + ") in: " + cls.getName(), this.expr, i11, parserContext);
                            } catch (IllegalAccessException e17) {
                                e = e17;
                                illegalAccessException = e;
                                throw new PropertyAccessException("could not access property", this.expr, i11, illegalAccessException, parserContext);
                            } catch (InvocationTargetException e18) {
                                e = e18;
                                invocationTargetException = e;
                                throw new PropertyAccessException("could not access property", this.expr, i11, invocationTargetException, parserContext);
                            }
                        }
                        this.f72001mv.E(PsExtractor.AUDIO_STREAM, y.h(obj4.getClass()));
                        this.f72001mv.p(str);
                        this.f72001mv.F(25, 4);
                        this.f72001mv.v(185, "java/util/Map", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");
                        this.f72001mv.F(25, 4);
                        ((Map) obj4).put(str, objG);
                    }
                    try {
                        this.deferFinish = false;
                        this.noinit = false;
                        _finishJIT();
                        return _initializeAccessor();
                    } catch (Exception e19) {
                        throw new CompileException("could not generate accessor", this.expr, i11, e19);
                    }
                }
                try {
                    int i16 = this.cursor;
                    whiteSpaceSkip();
                    if (i16 == this.end) {
                        throw new PropertyAccessException("unterminated '['", this.expr, i11, parserContext);
                    }
                    try {
                        if (scanTo(']')) {
                            throw new PropertyAccessException("unterminated '['", this.expr, i11, parserContext);
                        }
                        String strTrim = new String(this.expr, i16, this.cursor - i16).trim();
                        this.f72001mv.E(PsExtractor.AUDIO_STREAM, y.h(obj4.getClass()));
                        if (obj4 instanceof Map) {
                            if (d.f71968h && k10.d.f(Map.class)) {
                                propHandlerByteCodePut(strTrim, obj4, Map.class, objG);
                            } else {
                                Map map = (Map) obj4;
                                Object objN = d.n(strTrim, obj4, this.variableFactory);
                                Class clsAnalyze = propertyVerifier.analyze();
                                this.returnType = clsAnalyze;
                                map.put(objN, b.b(objG, clsAnalyze));
                                writeLiteralOrSubexpression(m.J0(strTrim.toCharArray(), parserContext));
                                this.f72001mv.F(25, 4);
                                if (objG != null && this.returnType != obj3.getClass()) {
                                    dataConversion(this.returnType);
                                    checkcast(this.returnType);
                                }
                                this.f72001mv.v(185, "java/util/Map", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");
                                this.f72001mv.j(87);
                                this.f72001mv.F(25, 4);
                            }
                        } else if (obj4 instanceof List) {
                            if (d.f71968h && k10.d.f(List.class)) {
                                propHandlerByteCodePut(strTrim, obj4, List.class, objG);
                            } else {
                                List list = (List) obj4;
                                int iIntValue = ((Integer) d.o(strTrim, obj4, this.variableFactory, Integer.class)).intValue();
                                Class clsAnalyze2 = propertyVerifier.analyze();
                                this.returnType = clsAnalyze2;
                                list.set(iIntValue, b.b(objG, clsAnalyze2));
                                writeLiteralOrSubexpression(m.J0(strTrim.toCharArray(), parserContext));
                                unwrapPrimitive(Integer.TYPE);
                                this.f72001mv.F(25, 4);
                                if (objG != null && !obj3.getClass().isAssignableFrom(this.returnType)) {
                                    dataConversion(this.returnType);
                                    checkcast(this.returnType);
                                }
                                this.f72001mv.v(185, "java/util/List", "set", "(ILjava/lang/Object;)Ljava/lang/Object;");
                                this.f72001mv.F(25, 4);
                            }
                        } else if (d.f71968h && k10.d.f(obj4.getClass())) {
                            propHandlerByteCodePut(strTrim, obj4, obj4.getClass(), objG);
                        } else {
                            if (!obj4.getClass().isArray()) {
                                throw new PropertyAccessException("cannot bind to collection property: " + new String(this.expr) + ": not a recognized collection type: " + obj4.getClass(), this.expr, i11, parserContext);
                            }
                            if (d.f71968h && k10.d.f(Array.class)) {
                                propHandlerByteCodePut(strTrim, obj4, Array.class, objG);
                            } else {
                                Class clsI = m.I(obj4.getClass());
                                Object objN2 = d.n(strTrim, obj4, this.variableFactory);
                                Serializable serializableJ0 = m.J0(strTrim.toCharArray(), parserContext);
                                Class cls3 = Integer.TYPE;
                                writeLiteralOrSubexpression(serializableJ0, cls3);
                                if (!(objN2 instanceof Integer)) {
                                    dataConversion(Integer.class);
                                    objN2 = b.b(objN2, Integer.class);
                                    unwrapPrimitive(cls3);
                                }
                                this.f72001mv.F(25, 4);
                                if (clsI.isPrimitive()) {
                                    unwrapPrimitive(clsI);
                                } else if (!clsI.equals(obj3.getClass())) {
                                    dataConversion(clsI);
                                }
                                arrayStore(clsI);
                                Array.set(obj4, ((Integer) objN2).intValue(), b.b(objG, clsI));
                                this.f72001mv.F(25, 4);
                            }
                        }
                        this.deferFinish = false;
                        this.noinit = false;
                        _finishJIT();
                        try {
                            this.deferFinish = false;
                            return _initializeAccessor();
                        } catch (Exception e20) {
                            throw new CompileException("could not generate accessor", this.expr, i11, e20);
                        }
                    } catch (IllegalAccessException e21) {
                        e = e21;
                        illegalAccessException = e;
                        throw new PropertyAccessException("could not access property", this.expr, i11, illegalAccessException, parserContext);
                    } catch (InvocationTargetException e22) {
                        e = e22;
                        invocationTargetException = e;
                        throw new PropertyAccessException("could not access property", this.expr, i11, invocationTargetException, parserContext);
                    }
                } catch (IllegalAccessException e23) {
                    e = e23;
                } catch (InvocationTargetException e24) {
                    e = e24;
                }
            } catch (IllegalAccessException e25) {
                e = e25;
            } catch (InvocationTargetException e26) {
                e = e26;
            }
        } catch (IllegalAccessException e27) {
            e = e27;
        } catch (InvocationTargetException e28) {
            e = e28;
        }
    }

    public void wrapRuntimeConverstion(Class cls) {
        ldcClassConstant(getWrapperClass(cls));
        this.f72001mv.v(184, "" + NAMESPACE + "DataConversion", "convert", "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;");
    }
}

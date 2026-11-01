package org.mvel2.ast;

import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.integration.ui.p001native.NativeImgComponent;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.transsion.mpush.core.config.PushMsgSource;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.g;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class Stacklang extends BlockNode {
    static final Map<String, Integer> opcodes;
    List<b> instructionList;
    ParserContext pCtx;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f71948a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f71949b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Object f71950c;

        private b() {
        }
    }

    static {
        HashMap map = new HashMap();
        opcodes = map;
        map.put(PushMsgSource.SOURCE_PUSH, 102);
        map.put(TmcStartParams.BACK_BEHAVIOR_POP, 103);
        map.put(NativeImgComponent.EVENT_LOAD, 104);
        map.put("ldtype", 105);
        map.put("invoke", 106);
        map.put(PlaceTypes.STORE, 109);
        map.put("getfield", 107);
        map.put("storefield", Integer.valueOf(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY));
        map.put("dup", 110);
        map.put("jump", 112);
        map.put("jumpif", 113);
        map.put("label", 111);
        map.put("eq", 18);
        map.put("ne", 19);
        map.put("reduce", Integer.valueOf(Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE));
        map.put("xswap", Integer.valueOf(Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE));
        map.put("swap", Integer.valueOf(Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE));
    }

    public Stacklang(char[] cArr, int i11, int i12, int i13, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.blockStart = i11;
        this.blockOffset = i12;
        this.fields = i13 | 4194304;
        String[] strArrSplit = new String(cArr, i11, i12).split(";");
        this.instructionList = new ArrayList(strArrSplit.length);
        for (String str : strArrSplit) {
            this.instructionList.add(parseInstruction(str.trim()));
        }
        this.pCtx = parserContext;
    }

    private static b parseInstruction(String str) {
        int iIndexOf = str.indexOf(32);
        b bVar = new b();
        String strSubstring = iIndexOf == -1 ? str : str.substring(0, iIndexOf);
        Map<String, Integer> map = opcodes;
        if (map.containsKey(strSubstring)) {
            bVar.f71948a = map.get(strSubstring).intValue();
        }
        if (strSubstring != str) {
            bVar.f71949b = str.substring(iIndexOf + 1);
        }
        return bVar;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Field field;
        Method methodL;
        Constructor constructorN;
        g gVar = (g) obj;
        int size = this.instructionList.size();
        int iIntValue = 0;
        while (iIntValue < size) {
            b bVar = this.instructionList.get(iIntValue);
            System.out.println(gVar.toString() + " >> " + bVar.f71948a + ":" + bVar.f71949b);
            int i11 = bVar.f71948a;
            if (i11 == 18) {
                gVar.q(Boolean.valueOf(gVar.n().equals(gVar.n())));
            } else if (i11 != 19) {
                switch (i11) {
                    case 102:
                        if (bVar.f71950c == null) {
                            bVar.f71950c = org.mvel2.d.n(bVar.f71949b, obj, variableResolverFactory);
                        }
                        gVar.q(bVar.f71950c);
                        break;
                    case 103:
                        gVar.n();
                        break;
                    case 104:
                        if (bVar.f71950c == null) {
                            bVar.f71950c = variableResolverFactory.getVariableResolver(bVar.f71949b);
                        }
                        gVar.q(((VariableResolver) bVar.f71950c).getValue());
                        break;
                    case 105:
                        try {
                            if (bVar.f71950c == null) {
                                bVar.f71950c = m.v(bVar.f71949b, this.pCtx);
                            }
                            gVar.q(bVar.f71950c);
                        } catch (ClassNotFoundException e11) {
                            throw new CompileException("error", this.expr, this.blockStart, e11);
                        }
                        break;
                    case 106:
                        g gVar2 = new g();
                        while (!gVar.g() && !(gVar.k() instanceof Class)) {
                            gVar2.q(gVar.n());
                        }
                        if (gVar.g()) {
                            throw new CompileException("invoke without class", this.expr, this.blockStart);
                        }
                        Object[] objArr = new Object[gVar2.t()];
                        int i12 = 0;
                        while (!gVar2.g()) {
                            objArr[i12] = gVar2.n();
                            i12++;
                        }
                        if ("<init>".equals(bVar.f71949b)) {
                            Object obj3 = bVar.f71950c;
                            if (obj3 == null) {
                                constructorN = m.N(objArr, (Class) gVar.n(), false);
                                bVar.f71950c = constructorN;
                            } else {
                                constructorN = (Constructor) obj3;
                            }
                            try {
                                gVar.q(constructorN.newInstance(objArr));
                            } catch (Exception e12) {
                                throw new CompileException("instantiation error", this.expr, this.blockStart, e12);
                            }
                        } else {
                            if (bVar.f71950c == null) {
                                Class cls = (Class) gVar.n();
                                methodL = m.L(objArr, bVar.f71949b, cls, cls.getDeclaredMethods(), false);
                                bVar.f71950c = methodL;
                            } else {
                                gVar.e();
                                methodL = (Method) bVar.f71950c;
                            }
                            try {
                                gVar.q(methodL.invoke(gVar.g() ? null : gVar.n(), objArr));
                            } catch (Exception e13) {
                                throw new CompileException("invokation error", this.expr, this.blockStart, e13);
                            }
                        }
                        break;
                        break;
                    case 107:
                        try {
                            if (gVar.g() || !(gVar.k() instanceof Class)) {
                                throw new CompileException("getfield without class", this.expr, this.blockStart);
                            }
                            if (bVar.f71950c == null) {
                                field = ((Class) gVar.n()).getField(bVar.f71949b);
                                bVar.f71950c = field;
                            } else {
                                gVar.e();
                                field = (Field) bVar.f71950c;
                            }
                            gVar.q(field.get(gVar.n()));
                        } catch (Exception e14) {
                            throw new CompileException("field access error", this.expr, this.blockStart, e14);
                        }
                        break;
                    case TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY /* 108 */:
                        try {
                            if (gVar.g() || !(gVar.k() instanceof Class)) {
                                throw new CompileException("storefield without class", this.expr, this.blockStart);
                            }
                            Class cls2 = (Class) gVar.n();
                            Object objN = gVar.n();
                            cls2.getField(bVar.f71949b).set(gVar.n(), objN);
                            gVar.q(objN);
                        } catch (Exception e15) {
                            throw new CompileException("field access error", this.expr, this.blockStart, e15);
                        }
                        break;
                    case 109:
                        Object obj4 = bVar.f71950c;
                        if (obj4 == null) {
                            bVar.f71950c = variableResolverFactory.createVariable(bVar.f71949b, gVar.k());
                        } else {
                            ((VariableResolver) obj4).setValue(gVar.k());
                        }
                        break;
                    case 110:
                        gVar.f();
                        break;
                    default:
                        switch (i11) {
                            case 112:
                                break;
                            case 113:
                                if (!gVar.p().booleanValue()) {
                                }
                                break;
                            case ASSET_WRITE_ERROR_VALUE:
                                gVar.i();
                                continue;
                            case INVALID_INDEX_URL_VALUE:
                                Object objN2 = gVar.n();
                                Object objN3 = gVar.n();
                                gVar.q(objN2);
                                gVar.q(objN3);
                                continue;
                            case GZIP_ENCODE_ERROR_VALUE:
                                gVar.v();
                                continue;
                            default:
                                continue;
                        }
                        Object obj5 = bVar.f71950c;
                        if (obj5 != null) {
                            iIntValue = ((Integer) obj5).intValue();
                        } else {
                            for (int i13 = 0; i13 < this.instructionList.size(); i13++) {
                                b bVar2 = this.instructionList.get(i13);
                                if (bVar2.f71948a == 111 && bVar.f71949b.equals(bVar2.f71949b)) {
                                    bVar.f71950c = Integer.valueOf(i13);
                                    iIntValue = i13;
                                }
                            }
                        }
                        break;
                }
            } else {
                gVar.q(Boolean.valueOf(!gVar.n().equals(gVar.n())));
            }
            iIntValue++;
        }
        return gVar.n();
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        g gVar = new g();
        gVar.q(getReducedValue(gVar, obj2, variableResolverFactory));
        if (gVar.h()) {
            while (true) {
                gVar.i();
                if (!gVar.h()) {
                    break;
                }
                gVar.u();
            }
        }
        return gVar.k();
    }
}

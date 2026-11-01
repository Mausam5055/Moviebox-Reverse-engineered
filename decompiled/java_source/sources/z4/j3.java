package z4;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.Feature;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes3.dex */
public class j3 implements b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j3 f79242a = new j3();

    @Override // z4.b2
    public int b() {
        return 12;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        y4.b bVar = aVar.f78831f;
        if (bVar.q0() == 8) {
            bVar.Z();
            return null;
        }
        if (bVar.q0() != 12 && bVar.q0() != 16) {
            throw new JSONException("syntax error: " + y4.f.a(bVar.q0()));
        }
        int iO = 0;
        String strK0 = null;
        String strK1 = null;
        String strK2 = null;
        while (true) {
            String strI = bVar.i(aVar.v());
            if (strI == null) {
                if (bVar.q0() == 13) {
                    bVar.c0(16);
                    break;
                }
                if (bVar.q0() != 16 || !bVar.n(Feature.AllowArbitraryCommas)) {
                }
            }
            bVar.q(4);
            if ("className".equals(strI)) {
                if (bVar.q0() == 8) {
                    strK0 = null;
                } else {
                    if (bVar.q0() != 4) {
                        throw new JSONException("syntax error");
                    }
                    strK0 = bVar.k0();
                }
            } else if ("methodName".equals(strI)) {
                if (bVar.q0() == 8) {
                    strK1 = null;
                } else {
                    if (bVar.q0() != 4) {
                        throw new JSONException("syntax error");
                    }
                    strK1 = bVar.k0();
                }
            } else if ("fileName".equals(strI)) {
                if (bVar.q0() == 8) {
                    strK2 = null;
                } else {
                    if (bVar.q0() != 4) {
                        throw new JSONException("syntax error");
                    }
                    strK2 = bVar.k0();
                }
            } else if ("lineNumber".equals(strI)) {
                if (bVar.q0() == 8) {
                    iO = 0;
                } else {
                    if (bVar.q0() != 2) {
                        throw new JSONException("syntax error");
                    }
                    iO = bVar.o();
                }
            } else if ("nativeMethod".equals(strI)) {
                if (bVar.q0() != 8 && bVar.q0() != 6 && bVar.q0() != 7) {
                    throw new JSONException("syntax error");
                }
                bVar.c0(16);
            } else if (strI == com.alibaba.fastjson.a.DEFAULT_TYPE_KEY) {
                if (bVar.q0() == 4) {
                    String strK3 = bVar.k0();
                    if (!strK3.equals("java.lang.StackTraceElement")) {
                        throw new JSONException("syntax error : " + strK3);
                    }
                } else if (bVar.q0() != 8) {
                    throw new JSONException("syntax error");
                }
            } else if ("moduleName".equals(strI)) {
                if (bVar.q0() != 8) {
                    if (bVar.q0() != 4) {
                        throw new JSONException("syntax error");
                    }
                    bVar.k0();
                }
            } else if ("moduleVersion".equals(strI)) {
                if (bVar.q0() != 8) {
                    if (bVar.q0() != 4) {
                        throw new JSONException("syntax error");
                    }
                    bVar.k0();
                }
            } else {
                if (!"classLoaderName".equals(strI)) {
                    throw new JSONException("syntax error : " + strI);
                }
                if (bVar.q0() != 8) {
                    if (bVar.q0() != 4) {
                        throw new JSONException("syntax error");
                    }
                    bVar.k0();
                }
            }
            if (bVar.q0() == 13) {
                bVar.c0(16);
                break;
            }
        }
        return new StackTraceElement(strK0, strK1, strK2, iO);
    }
}

package com.bytedance.sdk.component.Jcg.sP;

import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.bytedance.sdk.component.sP.Sj.Fmk;
import com.bytedance.sdk.component.sP.Sj.Ym;
import com.bytedance.sdk.component.sP.Sj.Zq;
import com.bytedance.sdk.component.sP.Sj.sef;
import com.bytedance.sdk.component.sP.Sj.uA;
import com.bytedance.sdk.component.sP.Sj.uvD;
import com.bytedance.sdk.component.sP.Sj.vS;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class EjP extends TKC {
    sef Sj;

    public EjP(Ym ym2) {
        super(ym2);
        this.Sj = null;
    }

    private byte[] HiB(String str) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        GZIPOutputStream gZIPOutputStream = null;
        if (str == null || str.length() == 0) {
            return null;
        }
        byte[] byteArray = new byte[0];
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(byteArrayOutputStream);
                    try {
                        gZIPOutputStream2.write(str.getBytes("utf-8"));
                        try {
                            gZIPOutputStream2.close();
                        } catch (IOException unused) {
                        }
                    } catch (IOException unused2) {
                        gZIPOutputStream = gZIPOutputStream2;
                        if (gZIPOutputStream != null) {
                            try {
                                gZIPOutputStream.close();
                            } catch (IOException unused3) {
                            }
                        }
                        if (byteArrayOutputStream != null) {
                        }
                        return byteArray;
                    } catch (Throwable th2) {
                        th = th2;
                        gZIPOutputStream = gZIPOutputStream2;
                        if (gZIPOutputStream != null) {
                            try {
                                gZIPOutputStream.close();
                            } catch (IOException unused4) {
                            }
                        }
                        if (byteArrayOutputStream == null) {
                            throw th;
                        }
                        byteArrayOutputStream.toByteArray();
                        try {
                            byteArrayOutputStream.close();
                            throw th;
                        } catch (IOException unused5) {
                            throw th;
                        }
                    }
                } catch (IOException unused6) {
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (IOException unused7) {
                byteArrayOutputStream = null;
            } catch (Throwable th4) {
                th = th4;
                byteArrayOutputStream = null;
            }
            byteArrayOutputStream.close();
        } catch (IOException unused8) {
        }
        byteArray = byteArrayOutputStream.toByteArray();
        return byteArray;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public uA Sj(uvD uvd) {
        try {
            return uvd.HiB();
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Charset Sj(uA uAVar) {
        try {
            return uAVar != null ? uAVar.Sj(com.bytedance.sdk.component.sP.Sj.sP.uA.Sj) : com.bytedance.sdk.component.sP.Sj.sP.uA.Sj;
        } catch (Exception unused) {
            return com.bytedance.sdk.component.sP.Sj.sP.uA.Sj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(com.bytedance.sdk.component.Jcg.sP sPVar, Zq zq2) {
        if (sPVar == null || zq2 == null) {
            return;
        }
        sPVar.Sj(zq2.uA());
    }

    public void EjP(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "{}";
        }
        this.Sj = sef.Sj(uA.Sj("application/json; charset=utf-8"), str);
    }

    public com.bytedance.sdk.component.Jcg.sP Sj() {
        com.bytedance.sdk.component.Jcg.sP sPVar;
        try {
            Fmk.Sj sj2 = new Fmk.Sj();
            if (TextUtils.isEmpty(this.Dq)) {
                return new com.bytedance.sdk.component.Jcg.sP(false, 5000, "URL_NULL_MSG", null, "URL_NULL_BODY", 1L, 1L);
            }
            sj2.sP(this.Dq);
            if (this.Sj == null) {
                return new com.bytedance.sdk.component.Jcg.sP(false, 5000, "BODY_NULL_MSG", null, "BODY_NULL_BODY", 1L, 1L);
            }
            Sj(sj2);
            sj2.Sj((Object) TKC());
            Zq zqSP = this.TKC.Sj(sj2.Sj(this.Sj).sP()).sP();
            if (zqSP == null) {
                return null;
            }
            HashMap map = new HashMap();
            vS vSVarJcg = zqSP.Jcg();
            if (vSVarJcg != null) {
                for (int i11 = 0; i11 < vSVarJcg.Sj(); i11++) {
                    String strSj = vSVarJcg.Sj(i11);
                    String strSP = vSVarJcg.sP(i11);
                    map.put(strSj, strSP);
                    if (strSj != null && strSj.equalsIgnoreCase("content-type")) {
                        map.put("content-type", strSP == null ? "" : strSP.toLowerCase());
                    }
                }
            }
            uvD uvdVS = zqSP.vS();
            if (com.bytedance.sdk.component.Jcg.TKC.Sj.Sj(map)) {
                byte[] bArrEjP = uvdVS.EjP();
                sPVar = new com.bytedance.sdk.component.Jcg.sP(zqSP.EjP(), zqSP.TKC(), zqSP.HiB(), map, null, zqSP.sP(), zqSP.Sj());
                sPVar.Sj(bArrEjP);
            } else if (this.uA) {
                byte[] bArrEjP2 = uvdVS.EjP();
                com.bytedance.sdk.component.Jcg.sP sPVar2 = new com.bytedance.sdk.component.Jcg.sP(zqSP.EjP(), zqSP.TKC(), zqSP.HiB(), map, new String(bArrEjP2, Sj(Sj(uvdVS))), zqSP.sP(), zqSP.Sj());
                sPVar2.Sj(bArrEjP2);
                sPVar = sPVar2;
            } else {
                if (uvdVS == null) {
                    throw new IOException(zqSP.HiB());
                }
                sPVar = new com.bytedance.sdk.component.Jcg.sP(zqSP.EjP(), zqSP.TKC(), zqSP.HiB(), map, uvdVS.sP(), zqSP.sP(), zqSP.Sj());
            }
            Sj(sPVar, zqSP);
            return sPVar;
        } catch (Throwable th2) {
            return new com.bytedance.sdk.component.Jcg.sP(false, 5001, th2.getMessage(), null, "BODY_NULL_BODY", 1L, 1L);
        }
    }

    public void Sj(final com.bytedance.sdk.component.Jcg.Sj.Sj sj2) {
        try {
            Fmk.Sj sj3 = new Fmk.Sj();
            if (TextUtils.isEmpty(this.Dq)) {
                sj2.Sj(this, new IOException("Url is Empty"));
                return;
            }
            if (!TextUtils.isEmpty(this.HiB)) {
                sj3.Sj(this.HiB);
            }
            int i11 = this.vS;
            if (i11 > 0) {
                sj3.Sj(i11);
            }
            sj3.sP(this.Dq);
            if (this.Sj == null) {
                if (sj2 != null) {
                    sj2.Sj(this, new IOException("RequestBody is null, content type is not support!!"));
                }
            } else {
                Sj(sj3);
                sj3.Sj((Object) TKC());
                this.TKC.Sj(sj3.Sj(this.Sj).sP()).Sj(new com.bytedance.sdk.component.sP.Sj.TKC() { // from class: com.bytedance.sdk.component.Jcg.sP.EjP.1
                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                     */
                    @Override // com.bytedance.sdk.component.sP.Sj.TKC
                    public void Sj(com.bytedance.sdk.component.sP.Sj.sP sPVar, Zq zq2) throws IOException {
                        com.bytedance.sdk.component.Jcg.sP sPVar2;
                        com.bytedance.sdk.component.Jcg.Sj.Sj sj4 = sj2;
                        if (sj4 != null) {
                            if (zq2 == null) {
                                sj4.Sj(EjP.this, new IOException("No response"));
                                return;
                            }
                            com.bytedance.sdk.component.Jcg.sP sPVar3 = null;
                            IOException iOException = null;
                            try {
                                HashMap map = new HashMap();
                                vS vSVarJcg = zq2.Jcg();
                                if (vSVarJcg != null) {
                                    for (int i12 = 0; i12 < vSVarJcg.Sj(); i12++) {
                                        String strSj = vSVarJcg.Sj(i12);
                                        String strSP = vSVarJcg.sP(i12);
                                        map.put(strSj, strSP);
                                        if (strSj != null && strSj.equalsIgnoreCase("content-type")) {
                                            map.put("content-type", strSP == null ? "" : strSP.toLowerCase());
                                        }
                                    }
                                }
                                uvD uvdVS = zq2.vS();
                                if (com.bytedance.sdk.component.Jcg.TKC.Sj.Sj(map)) {
                                    byte[] bArrEjP = uvdVS.EjP();
                                    sPVar2 = new com.bytedance.sdk.component.Jcg.sP(zq2.EjP(), zq2.TKC(), zq2.HiB(), map, null, zq2.sP(), zq2.Sj());
                                    try {
                                        sPVar2.Sj(bArrEjP);
                                    } catch (Throwable th2) {
                                        th = th2;
                                        sPVar3 = sPVar2;
                                        sPVar2 = sPVar3;
                                        iOException = new IOException(th);
                                    }
                                } else if (EjP.this.uA) {
                                    byte[] bArrEjP2 = uvdVS.EjP();
                                    EjP ejP = EjP.this;
                                    com.bytedance.sdk.component.Jcg.sP sPVar4 = new com.bytedance.sdk.component.Jcg.sP(zq2.EjP(), zq2.TKC(), zq2.HiB(), map, new String(bArrEjP2, ejP.Sj(ejP.Sj(uvdVS))), zq2.sP(), zq2.Sj());
                                    try {
                                        sPVar4.Sj(bArrEjP2);
                                        sPVar2 = sPVar4;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        sPVar3 = sPVar4;
                                        sPVar2 = sPVar3;
                                        iOException = new IOException(th);
                                    }
                                } else {
                                    if (uvdVS == null) {
                                        throw new IOException(zq2.HiB());
                                    }
                                    sPVar2 = new com.bytedance.sdk.component.Jcg.sP(zq2.EjP(), zq2.TKC(), zq2.HiB(), map, uvdVS.sP(), zq2.sP(), zq2.Sj());
                                }
                                EjP.this.Sj(sPVar2, zq2);
                            } catch (Throwable th4) {
                                th = th4;
                            }
                            if (sPVar2 != null) {
                                sj2.Sj(EjP.this, sPVar2);
                                return;
                            }
                            com.bytedance.sdk.component.Jcg.Sj.Sj sj5 = sj2;
                            if (!(sj5 instanceof com.bytedance.sdk.component.Jcg.Sj.sP)) {
                                EjP ejP2 = EjP.this;
                                if (iOException == null) {
                                    iOException = new IOException("Unexpected exception");
                                }
                                sj5.Sj(ejP2, iOException);
                                return;
                            }
                            com.bytedance.sdk.component.Jcg.Sj.sP sPVar5 = (com.bytedance.sdk.component.Jcg.Sj.sP) sj5;
                            EjP ejP3 = EjP.this;
                            if (iOException == null) {
                                iOException = new IOException("Unexpected exception");
                            }
                            sPVar5.Sj(ejP3, iOException, new com.bytedance.sdk.component.Jcg.sP(zq2.EjP(), zq2.TKC(), zq2.HiB(), null, null, zq2.sP(), zq2.Sj()));
                        }
                    }

                    @Override // com.bytedance.sdk.component.sP.Sj.TKC
                    public void Sj(com.bytedance.sdk.component.sP.Sj.sP sPVar, IOException iOException) {
                        com.bytedance.sdk.component.Jcg.Sj.Sj sj4 = sj2;
                        if (sj4 != null) {
                            sj4.Sj(EjP.this, iOException);
                        }
                    }
                });
            }
        } catch (Throwable th2) {
            sj2.Sj(this, new IOException(th2.getMessage()));
        }
    }

    public void Sj(String str, boolean z10) {
        if (!z10) {
            EjP(str);
        } else {
            Sj("application/json; charset=utf-8", HiB(str));
            sP(HttpHeaders.CONTENT_ENCODING, "gzip");
        }
    }

    public void Sj(String str, byte[] bArr) {
        this.Sj = sef.Sj(uA.Sj(str), bArr);
    }

    public void Sj(JSONObject jSONObject) {
        this.Sj = sef.Sj(uA.Sj("application/json; charset=utf-8"), jSONObject != null ? jSONObject.toString() : "{}");
    }
}

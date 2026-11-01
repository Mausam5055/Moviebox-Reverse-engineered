package com.mbridge.msdk.foundation.download.download;

import android.webkit.URLUtil;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.net.MBridgeHostnameVerifier;
import com.mbridge.msdk.foundation.same.task.a;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.y0;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes5.dex */
public class DownLoadUtils {
    private static final int DOWNLOAD_CONNECTION_TIME_OUT = 20000;
    private static final int DOWNLOAD_READ_TIME_OUT = 30000;
    public static final String END_TAG = "<mbridgeloadend></mbridgeloadend>";
    private static final String TAG = "DownLoadUtils";

    public static void getSourceCodeFromNetUrl(final String str, final H5DownLoadManager.IOnDownLoadH5Source iOnDownLoadH5Source, final boolean z10) {
        try {
            if (!y0.a(str) && URLUtil.isNetworkUrl(str)) {
                DownloadTask.getInstance().runTask(new a() { // from class: com.mbridge.msdk.foundation.download.download.DownLoadUtils.1
                    @Override // com.mbridge.msdk.foundation.same.task.a
                    public void cancelTask() {
                    }

                    @Override // com.mbridge.msdk.foundation.same.task.a
                    public void pauseTask(boolean z11) {
                    }

                    /* JADX WARN: Code duplicated, block: B:103:0x0175 A[DONT_INVERT] */
                    /* JADX WARN: Code duplicated, block: B:104:0x0177 A[Catch: Exception -> 0x0173, TRY_LEAVE, TryCatch #6 {Exception -> 0x0173, blocks: (B:100:0x016f, B:104:0x0177), top: B:116:0x016f }] */
                    /* JADX WARN: Code duplicated, block: B:110:0x00f3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:116:0x016f A[EXC_TOP_SPLITTER, SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:124:0x0108 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:61:0x00f9 A[DONT_INVERT] */
                    /* JADX WARN: Code duplicated, block: B:62:0x00fb A[Catch: Exception -> 0x00f7, TRY_LEAVE, TryCatch #2 {Exception -> 0x00f7, blocks: (B:58:0x00f3, B:62:0x00fb), top: B:110:0x00f3 }] */
                    /* JADX WARN: Code duplicated, block: B:74:0x011b  */
                    /* JADX WARN: Code duplicated, block: B:75:0x011d A[Catch: all -> 0x0119, TryCatch #13 {all -> 0x0119, blocks: (B:66:0x0108, B:69:0x010e, B:71:0x0111, B:75:0x011d, B:77:0x0123, B:79:0x0129, B:81:0x0131, B:83:0x0135, B:84:0x013b, B:86:0x013f), top: B:124:0x0108 }] */
                    /* JADX WARN: Code duplicated, block: B:84:0x013b A[Catch: all -> 0x0119, TryCatch #13 {all -> 0x0119, blocks: (B:66:0x0108, B:69:0x010e, B:71:0x0111, B:75:0x011d, B:77:0x0123, B:79:0x0129, B:81:0x0131, B:83:0x0135, B:84:0x013b, B:86:0x013f), top: B:124:0x0108 }] */
                    /* JADX WARN: Code duplicated, block: B:86:0x013f A[Catch: all -> 0x0119, TRY_LEAVE, TryCatch #13 {all -> 0x0119, blocks: (B:66:0x0108, B:69:0x010e, B:71:0x0111, B:75:0x011d, B:77:0x0123, B:79:0x0129, B:81:0x0131, B:83:0x0135, B:84:0x013b, B:86:0x013f), top: B:124:0x0108 }] */
                    /* JADX WARN: Instruction removed from duplicated block: B:86:0x013f, please report this as an issue */
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r0v18, types: [com.mbridge.msdk.foundation.download.download.H5DownLoadManager$IOnDownLoadH5Source] */
                    /* JADX WARN: Type inference failed for: r6v0 */
                    /* JADX WARN: Type inference failed for: r6v1 */
                    /* JADX WARN: Type inference failed for: r6v10, types: [java.io.ByteArrayOutputStream] */
                    /* JADX WARN: Type inference failed for: r6v11 */
                    /* JADX WARN: Type inference failed for: r6v12, types: [java.io.ByteArrayOutputStream] */
                    /* JADX WARN: Type inference failed for: r6v13 */
                    /* JADX WARN: Type inference failed for: r6v14 */
                    /* JADX WARN: Type inference failed for: r6v15 */
                    /* JADX WARN: Type inference failed for: r6v16 */
                    /* JADX WARN: Type inference failed for: r6v2, types: [java.io.ByteArrayOutputStream] */
                    /* JADX WARN: Type inference failed for: r6v3 */
                    /* JADX WARN: Type inference failed for: r6v4 */
                    /* JADX WARN: Type inference failed for: r6v5 */
                    /* JADX WARN: Type inference failed for: r6v6, types: [java.io.ByteArrayOutputStream] */
                    /* JADX WARN: Type inference failed for: r6v9 */
                    /* JADX WARN: Type inference failed for: r7v0 */
                    /* JADX WARN: Type inference failed for: r7v1 */
                    /* JADX WARN: Type inference failed for: r7v13 */
                    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.String] */
                    /* JADX WARN: Type inference failed for: r7v3 */
                    /* JADX WARN: Type inference failed for: r7v4 */
                    /* JADX WARN: Type inference failed for: r7v5 */
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
                    @Override // com.mbridge.msdk.foundation.same.task.a
                    public void runTask() throws Throwable {
                        ?? r11;
                        InputStream inputStream;
                        byte[] byteArray;
                        ?? byteArrayOutputStream;
                        ?? r12;
                        ?? r13;
                        String message;
                        H5DownLoadManager.IOnDownLoadH5Source iOnDownLoadH5Source2;
                        boolean z11;
                        String str2;
                        InputStream inputStream2 = null;
                        boolean z12 = false;
                        try {
                            H5DownLoadManager.IOnDownLoadH5Source iOnDownLoadH5Source3 = iOnDownLoadH5Source;
                            if (iOnDownLoadH5Source3 != null) {
                                iOnDownLoadH5Source3.onStart();
                            }
                            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
                            httpsURLConnection.setHostnameVerifier(new MBridgeHostnameVerifier(str));
                            httpsURLConnection.setReadTimeout(30000);
                            httpsURLConnection.setConnectTimeout(20000);
                            int responseCode = httpsURLConnection.getResponseCode();
                            o0.a(DownLoadUtils.TAG, "response code " + responseCode);
                            try {
                                try {
                                    if (responseCode == 200) {
                                        inputStream = httpsURLConnection.getInputStream();
                                        try {
                                            byte[] bArr = new byte[6144];
                                            byteArrayOutputStream = new ByteArrayOutputStream();
                                            while (true) {
                                                try {
                                                    try {
                                                        int i11 = inputStream.read(bArr);
                                                        if (i11 == -1) {
                                                            break;
                                                        } else {
                                                            byteArrayOutputStream.write(bArr, 0, i11);
                                                        }
                                                    } catch (Exception e11) {
                                                        e = e11;
                                                        byteArray = null;
                                                    }
                                                    if (z12) {
                                                        try {
                                                            if (!z10 && byteArray != null && byteArray.length > 0) {
                                                                iOnDownLoadH5Source.onSuccess(null, byteArray, str);
                                                            } else if (z12 || !y0.b(r12) || r12.length() <= 0 || !r12.contains(DownLoadUtils.END_TAG)) {
                                                                iOnDownLoadH5Source2 = iOnDownLoadH5Source;
                                                                if (iOnDownLoadH5Source2 != null) {
                                                                    iOnDownLoadH5Source2.onFailed("content write failed:" + message);
                                                                }
                                                            } else {
                                                                ?? r14 = iOnDownLoadH5Source;
                                                                if (r14 != 0) {
                                                                    r14.onSuccess(r12, byteArray, str);
                                                                }
                                                            }
                                                        } catch (Throwable th2) {
                                                            if (MBridgeConstans.DEBUG) {
                                                                th2.printStackTrace();
                                                            }
                                                            H5DownLoadManager.IOnDownLoadH5Source iOnDownLoadH5Source4 = iOnDownLoadH5Source;
                                                            if (iOnDownLoadH5Source4 != null) {
                                                                try {
                                                                    iOnDownLoadH5Source4.onFailed(th2.getMessage());
                                                                    return;
                                                                } catch (Exception e12) {
                                                                    e12.printStackTrace();
                                                                    return;
                                                                }
                                                            }
                                                            return;
                                                        }
                                                    } else if (z12) {
                                                        iOnDownLoadH5Source2 = iOnDownLoadH5Source;
                                                        if (iOnDownLoadH5Source2 != null) {
                                                            iOnDownLoadH5Source2.onFailed("content write failed:" + message);
                                                        }
                                                    } else {
                                                        iOnDownLoadH5Source2 = iOnDownLoadH5Source;
                                                        if (iOnDownLoadH5Source2 != null) {
                                                            iOnDownLoadH5Source2.onFailed("content write failed:" + message);
                                                        }
                                                    }
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    r13 = byteArrayOutputStream;
                                                    if (inputStream != null) {
                                                        try {
                                                            inputStream.close();
                                                            if (r13 != 0) {
                                                                r13.close();
                                                            }
                                                        } catch (Exception e13) {
                                                            e13.printStackTrace();
                                                            e13.getMessage();
                                                            throw th;
                                                        }
                                                    } else if (r13 != 0) {
                                                        r13.close();
                                                    }
                                                    throw th;
                                                }
                                                r12 = 0;
                                                message = e.getMessage();
                                                o0.b(DownLoadUtils.TAG, "getStringFromUrl failed " + e.getLocalizedMessage());
                                                if (inputStream != null) {
                                                    try {
                                                        inputStream.close();
                                                        if (byteArrayOutputStream != 0) {
                                                            byteArrayOutputStream.close();
                                                        }
                                                    } catch (Exception e14) {
                                                        e14.printStackTrace();
                                                        message = e14.getMessage();
                                                    }
                                                } else if (byteArrayOutputStream != 0) {
                                                    byteArrayOutputStream.close();
                                                }
                                            }
                                            if (byteArrayOutputStream.toByteArray() != null) {
                                                byteArray = byteArrayOutputStream.toByteArray();
                                                try {
                                                    str2 = !z10 ? new String(byteArray) : null;
                                                } catch (Exception e15) {
                                                    e = e15;
                                                    r12 = 0;
                                                }
                                            } else {
                                                byteArray = null;
                                                str2 = null;
                                            }
                                            message = "";
                                            z11 = true;
                                            byteArrayOutputStream = byteArrayOutputStream;
                                            r12 = str2;
                                        } catch (Exception e16) {
                                            e = e16;
                                            byteArray = null;
                                            byteArrayOutputStream = byteArray;
                                            r12 = byteArrayOutputStream;
                                        } catch (Throwable th4) {
                                            th = th4;
                                            byteArrayOutputStream = 0;
                                            inputStream2 = inputStream;
                                            r11 = byteArrayOutputStream;
                                            inputStream = inputStream2;
                                            r13 = r11;
                                            if (inputStream != null) {
                                                inputStream.close();
                                                if (r13 != 0) {
                                                    r13.close();
                                                }
                                            } else if (r13 != 0) {
                                                r13.close();
                                            }
                                            throw th;
                                        }
                                    } else {
                                        message = "responseCode is " + responseCode;
                                        inputStream = null;
                                        byteArray = null;
                                        byteArrayOutputStream = 0;
                                        r12 = 0;
                                        z11 = false;
                                    }
                                    httpsURLConnection.disconnect();
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (Exception e17) {
                                            e17.printStackTrace();
                                            message = e17.getMessage();
                                        }
                                    }
                                    if (byteArrayOutputStream != 0) {
                                        byteArrayOutputStream.close();
                                    }
                                    z12 = z11;
                                } catch (Exception e18) {
                                    e = e18;
                                    message = e.getMessage();
                                    o0.b(DownLoadUtils.TAG, "getStringFromUrl failed " + e.getLocalizedMessage());
                                    if (inputStream != null) {
                                        inputStream.close();
                                        if (byteArrayOutputStream != 0) {
                                            byteArrayOutputStream.close();
                                        }
                                    } else if (byteArrayOutputStream != 0) {
                                        byteArrayOutputStream.close();
                                    }
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                inputStream2 = inputStream;
                                r11 = byteArrayOutputStream;
                                inputStream = inputStream2;
                                r13 = r11;
                                if (inputStream != null) {
                                    inputStream.close();
                                    if (r13 != 0) {
                                        r13.close();
                                    }
                                } else if (r13 != 0) {
                                    r13.close();
                                }
                                throw th;
                            }
                        } catch (Exception e19) {
                            e = e19;
                            inputStream = null;
                            byteArray = null;
                        } catch (Throwable th6) {
                            th = th6;
                            r11 = 0;
                            inputStream = inputStream2;
                            r13 = r11;
                            if (inputStream != null) {
                                inputStream.close();
                                if (r13 != 0) {
                                    r13.close();
                                }
                            } else if (r13 != 0) {
                                r13.close();
                            }
                            throw th;
                        }
                        if (z12) {
                            if (!z10) {
                                if (z12) {
                                    iOnDownLoadH5Source2 = iOnDownLoadH5Source;
                                    if (iOnDownLoadH5Source2 != null) {
                                        iOnDownLoadH5Source2.onFailed("content write failed:" + message);
                                    }
                                } else {
                                    iOnDownLoadH5Source2 = iOnDownLoadH5Source;
                                    if (iOnDownLoadH5Source2 != null) {
                                        iOnDownLoadH5Source2.onFailed("content write failed:" + message);
                                    }
                                }
                            } else if (z12) {
                                iOnDownLoadH5Source2 = iOnDownLoadH5Source;
                                if (iOnDownLoadH5Source2 != null) {
                                    iOnDownLoadH5Source2.onFailed("content write failed:" + message);
                                }
                            } else {
                                iOnDownLoadH5Source2 = iOnDownLoadH5Source;
                                if (iOnDownLoadH5Source2 != null) {
                                    iOnDownLoadH5Source2.onFailed("content write failed:" + message);
                                }
                            }
                        } else if (z12) {
                            iOnDownLoadH5Source2 = iOnDownLoadH5Source;
                            if (iOnDownLoadH5Source2 != null) {
                                iOnDownLoadH5Source2.onFailed("content write failed:" + message);
                            }
                        } else {
                            iOnDownLoadH5Source2 = iOnDownLoadH5Source;
                            if (iOnDownLoadH5Source2 != null) {
                                iOnDownLoadH5Source2.onFailed("content write failed:" + message);
                            }
                        }
                    }
                });
                return;
            }
            if (iOnDownLoadH5Source != null) {
                iOnDownLoadH5Source.onFailed("url is error");
            }
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                th2.printStackTrace();
            }
        }
    }
}

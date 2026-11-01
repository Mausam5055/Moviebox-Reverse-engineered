package com.cloud.h5update.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.StreamCorruptedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes3.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j f21304a = new j();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static SharedPreferences f21305b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static SharedPreferences.Editor f21306c;

    private j() {
    }

    private final SharedPreferences l() {
        return e();
    }

    public final SharedPreferences.Editor a() {
        SharedPreferences.Editor editor = f21306c;
        if (editor != null) {
            return editor;
        }
        Intrinsics.z("editor");
        return null;
    }

    public final int b(String key, int i11) {
        Intrinsics.h(key, "key");
        return l().getInt(key, i11);
    }

    public final long c(String key, long j11) {
        Intrinsics.h(key, "key");
        return l().getLong(key, j11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r4v6 */
    public final Object d(String str, Class cls) throws Throwable {
        String string;
        ObjectInputStream objectInputStream;
        if (!l().contains(str) || (string = l().getString(str, null)) == null) {
            return null;
        }
        ?? Decode = Base64.decode(string, 0);
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(Decode);
        try {
            try {
                try {
                    objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    try {
                        Object object = objectInputStream.readObject();
                        try {
                            byteArrayInputStream.close();
                            objectInputStream.close();
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        }
                        return object;
                    } catch (StreamCorruptedException e12) {
                        e = e12;
                        e.printStackTrace();
                        byteArrayInputStream.close();
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        return null;
                    } catch (IOException e13) {
                        e = e13;
                        e.printStackTrace();
                        byteArrayInputStream.close();
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        return null;
                    } catch (ClassNotFoundException e14) {
                        e = e14;
                        e.printStackTrace();
                        byteArrayInputStream.close();
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        return null;
                    }
                } catch (IOException e15) {
                    e15.printStackTrace();
                    return null;
                }
            } catch (StreamCorruptedException e16) {
                e = e16;
                objectInputStream = null;
            } catch (IOException e17) {
                e = e17;
                objectInputStream = null;
            } catch (ClassNotFoundException e18) {
                e = e18;
                objectInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                Decode = 0;
                try {
                    byteArrayInputStream.close();
                    if (Decode != 0) {
                        Decode.close();
                    }
                } catch (IOException e19) {
                    e19.printStackTrace();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final SharedPreferences e() {
        SharedPreferences sharedPreferences = f21305b;
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        Intrinsics.z("sharedPreferences");
        return null;
    }

    public final void f(Context context) {
        Intrinsics.h(context, "context");
        SharedPreferences sharedPreferences = context.getSharedPreferences("tupdate_sdk", 0);
        Intrinsics.g(sharedPreferences, "context.getSharedPrefere…REFERENCES, MODE_PRIVATE)");
        k(sharedPreferences);
        SharedPreferences.Editor editorEdit = e().edit();
        Intrinsics.g(editorEdit, "sharedPreferences.edit()");
        j(editorEdit);
    }

    public final void g(String key, long j11) {
        Intrinsics.h(key, "key");
        SharedPreferences.Editor editor = l().edit();
        Intrinsics.d(editor, "editor");
        editor.putLong(key, j11);
        editor.commit();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    public final void h(String str, Object obj) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ?? r11 = 0;
        ObjectOutputStream objectOutputStream = null;
        r11 = 0;
        try {
            try {
                ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream2.writeObject(obj);
                    byte[] bArrEncode = Base64.encode(byteArrayOutputStream.toByteArray(), 0);
                    Intrinsics.g(bArrEncode, "encode(baos.toByteArray(), Base64.DEFAULT)");
                    String str2 = new String(bArrEncode, Charsets.UTF_8);
                    a().putString(str, str2);
                    a().commit();
                    byteArrayOutputStream.close();
                    objectOutputStream2.close();
                    r11 = str2;
                } catch (IOException e11) {
                    e = e11;
                    objectOutputStream = objectOutputStream2;
                    e.printStackTrace();
                    byteArrayOutputStream.close();
                    r11 = objectOutputStream;
                    if (objectOutputStream != null) {
                        objectOutputStream.close();
                        r11 = objectOutputStream;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    r11 = objectOutputStream2;
                    try {
                        byteArrayOutputStream.close();
                        if (r11 != 0) {
                            r11.close();
                        }
                    } catch (IOException e12) {
                        e12.printStackTrace();
                    }
                    throw th;
                }
            } catch (IOException e13) {
                e13.printStackTrace();
            }
        } catch (IOException e14) {
            e = e14;
        }
    }

    public final void i(String key) {
        Intrinsics.h(key, "key");
        a().remove(key);
        a().apply();
    }

    public final void j(SharedPreferences.Editor editor) {
        Intrinsics.h(editor, "<set-?>");
        f21306c = editor;
    }

    public final void k(SharedPreferences sharedPreferences) {
        Intrinsics.h(sharedPreferences, "<set-?>");
        f21305b = sharedPreferences;
    }
}

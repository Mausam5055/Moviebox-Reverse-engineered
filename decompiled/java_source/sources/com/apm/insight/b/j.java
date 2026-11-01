package com.apm.insight.b;

import android.os.Looper;
import android.os.Message;
import android.os.MessageQueue;
import java.lang.reflect.Field;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static MessageQueue f19435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Field f19436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Field f19437c;

    private static Message a(Message message) {
        Field field = f19437c;
        if (field != null) {
            try {
                return (Message) field.get(message);
            } catch (Exception unused) {
                return null;
            }
        }
        try {
            Field declaredField = Class.forName("android.os.Message").getDeclaredField("next");
            f19437c = declaredField;
            declaredField.setAccessible(true);
            return (Message) f19437c.get(message);
        } catch (Exception unused2) {
            return null;
        }
    }

    public static Message a(MessageQueue messageQueue) {
        Field field = f19436b;
        if (field != null) {
            try {
                return (Message) field.get(messageQueue);
            } catch (Exception unused) {
                return null;
            }
        }
        try {
            Field declaredField = Class.forName("android.os.MessageQueue").getDeclaredField("mMessages");
            f19436b = declaredField;
            declaredField.setAccessible(true);
            return (Message) f19436b.get(messageQueue);
        } catch (Exception unused2) {
            return null;
        }
    }

    public static MessageQueue a() {
        if (f19435a == null && Looper.getMainLooper() != null) {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper == Looper.myLooper()) {
                f19435a = Looper.myQueue();
            } else {
                f19435a = mainLooper.getQueue();
            }
        }
        return f19435a;
    }

    public static JSONArray a(long j11) {
        MessageQueue messageQueueA = a();
        JSONArray jSONArray = new JSONArray();
        if (messageQueueA == null) {
            return jSONArray;
        }
        try {
            synchronized (messageQueueA) {
                try {
                    Message messageA = a(messageQueueA);
                    if (messageA == null) {
                        return jSONArray;
                    }
                    int i11 = 0;
                    int i12 = 0;
                    while (messageA != null && i11 < 100) {
                        i11++;
                        i12++;
                        JSONObject jSONObjectA = a(messageA, j11);
                        try {
                            jSONObjectA.put("id", i12);
                        } catch (JSONException unused) {
                        }
                        jSONArray.put(jSONObjectA);
                        messageA = a(messageA);
                    }
                    return jSONArray;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            com.apm.insight.c.a();
            com.apm.insight.runtime.j.a(th3, "NPTH_CATCH");
            return jSONArray;
        }
    }

    private static JSONObject a(Message message, long j11) {
        JSONObject jSONObject = new JSONObject();
        if (message == null) {
            return jSONObject;
        }
        try {
            jSONObject.put("when", message.getWhen() - j11);
            if (message.getCallback() != null) {
                jSONObject.put("callback", String.valueOf(message.getCallback()));
            }
            jSONObject.put("what", message.what);
            if (message.getTarget() != null) {
                jSONObject.put("target", String.valueOf(message.getTarget()));
            } else {
                jSONObject.put("barrier", message.arg1);
            }
            jSONObject.put("arg1", message.arg1);
            jSONObject.put("arg2", message.arg2);
            Object obj = message.obj;
            if (obj != null) {
                jSONObject.put("obj", obj);
            }
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
        return jSONObject;
    }
}

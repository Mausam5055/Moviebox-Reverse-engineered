package com.google.firebase.messaging;

import android.os.Bundle;
import com.transsion.push.PushConstants;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f32066a = TimeUnit.MINUTES.toMillis(3);

    public static final class a {
        public static androidx.collection.a a(Bundle bundle) {
            androidx.collection.a aVar = new androidx.collection.a();
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str.startsWith("google.") && !str.startsWith("gcm.") && !str.equals("from") && !str.equals(PushConstants.EXTRA_PUSH_MESSAGE_TYPE) && !str.equals("collapse_key")) {
                        aVar.put(str, str2);
                    }
                }
            }
            return aVar;
        }
    }
}

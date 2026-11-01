package com.transsion.shorttv._channel;

import androidx.p009lifecycle.c0;
import com.transsion.shorttv.bean.Subject;
import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a {

    /* JADX INFO: renamed from: com.transsion.shorttv._channel.a$a, reason: collision with other inner class name */
    static final class C0657a implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f52582a;

        C0657a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f52582a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f52582a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f52582a.invoke(obj);
        }
    }

    public static final String a(Subject subject, String str) {
        String ops;
        String ops2;
        if (subject != null) {
            try {
                ops = subject.getOps();
            } catch (Exception e11) {
                e11.printStackTrace();
                return subject != null ? subject.getOps() : null;
            }
        } else {
            ops = null;
        }
        JSONObject jSONObject = (ops == null || ops.length() == 0 || (ops2 = subject.getOps()) == null) ? new JSONObject() : new JSONObject(ops2);
        jSONObject.put("rec_type", str);
        return jSONObject.toString();
    }
}

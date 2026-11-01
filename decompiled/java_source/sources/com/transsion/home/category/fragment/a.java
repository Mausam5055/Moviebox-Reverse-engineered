package com.transsion.home.category.fragment;

import androidx.p009lifecycle.c0;
import com.transsion.moviedetailapi.bean.Subject;
import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {

    /* JADX INFO: renamed from: com.transsion.home.category.fragment.a$a, reason: collision with other inner class name */
    static final class C0629a implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f44876a;

        C0629a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f44876a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f44876a;
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
            this.f44876a.invoke(obj);
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
        JSONObject jSONObject = (ops == null || ops.length() == 0 || subject == null || (ops2 = subject.getOps()) == null) ? new JSONObject() : new JSONObject(ops2);
        jSONObject.put("rec_type", str);
        return jSONObject.toString();
    }
}

package com.transsion.ad.monopoly.intercept;

import android.os.SystemClock;
import androidx.collection.s;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import java.util.Locale;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import nh.m;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class ShowOnNetworkStateHandler extends com.transsion.ad.monopoly.intercept.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f42136b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile a.C0597a f42137c;

    public static final class a {

        /* JADX INFO: renamed from: com.transsion.ad.monopoly.intercept.ShowOnNetworkStateHandler$a$a, reason: collision with other inner class name */
        private static final class C0597a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final boolean f42138a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final long f42139b;

            public C0597a(boolean z10, long j11) {
                this.f42138a = z10;
                this.f42139b = j11;
            }

            public final boolean a() {
                return this.f42138a;
            }

            public final long b() {
                return this.f42139b;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0597a)) {
                    return false;
                }
                C0597a c0597a = (C0597a) obj;
                return this.f42138a == c0597a.f42138a && this.f42139b == c0597a.f42139b;
            }

            public int hashCode() {
                return (androidx.compose.foundation.e.a(this.f42138a) * 31) + s.a(this.f42139b);
            }

            public String toString() {
                return "NetworkCache(status=" + this.f42138a + ", timestamp=" + this.f42139b + ")";
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Object b(Continuation continuation) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            C0597a c0597a = ShowOnNetworkStateHandler.f42137c;
            if (c0597a != null) {
                if (jElapsedRealtime - c0597a.b() >= 1000) {
                    c0597a = null;
                }
                if (c0597a != null) {
                    return Boxing.a(c0597a.a());
                }
            }
            boolean zE = m.f70474a.e();
            ShowOnNetworkStateHandler.f42137c = new C0597a(zE, jElapsedRealtime);
            return Boxing.a(zE);
        }
    }

    private final Boolean i(MbAdDbPlans mbAdDbPlans) {
        String extraConfig;
        if (mbAdDbPlans != null && (extraConfig = mbAdDbPlans.getExtraConfig()) != null) {
            try {
                String string = new JSONObject(extraConfig).getString("network");
                Intrinsics.e(string);
                String lowerCase = string.toLowerCase(Locale.ROOT);
                Intrinsics.g(lowerCase, "toLowerCase(...)");
                return Boolean.valueOf(Intrinsics.c(lowerCase, "on"));
            } catch (Exception unused) {
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.transsion.ad.monopoly.intercept.a
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) throws Throwable {
        ShowOnNetworkStateHandler$doHandle$1 showOnNetworkStateHandler$doHandle$1;
        String str2;
        Boolean bool;
        AdPlansHitResponse adPlansHitResponse;
        if (continuation instanceof ShowOnNetworkStateHandler$doHandle$1) {
            showOnNetworkStateHandler$doHandle$1 = (ShowOnNetworkStateHandler$doHandle$1) continuation;
            int i11 = showOnNetworkStateHandler$doHandle$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                showOnNetworkStateHandler$doHandle$1.label = i11 - Integer.MIN_VALUE;
            } else {
                showOnNetworkStateHandler$doHandle$1 = new ShowOnNetworkStateHandler$doHandle$1(this, continuation);
            }
        } else {
            showOnNetworkStateHandler$doHandle$1 = new ShowOnNetworkStateHandler$doHandle$1(this, continuation);
        }
        Object objB = showOnNetworkStateHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = showOnNetworkStateHandler$doHandle$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                bool = (Boolean) showOnNetworkStateHandler$doHandle$1.L$3;
                map = (Map) showOnNetworkStateHandler$doHandle$1.L$2;
                mbAdDbPlans = (MbAdDbPlans) showOnNetworkStateHandler$doHandle$1.L$1;
                str2 = (String) showOnNetworkStateHandler$doHandle$1.L$0;
                ResultKt.b(objB);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objB);
            }
            adPlansHitResponse = (AdPlansHitResponse) objB;
            if (adPlansHitResponse != null) {
                return adPlansHitResponse;
            }
            return e();
        }
        ResultKt.b(objB);
        Boolean boolI = i(mbAdDbPlans);
        a aVar = f42136b;
        showOnNetworkStateHandler$doHandle$1.L$0 = str;
        showOnNetworkStateHandler$doHandle$1.L$1 = mbAdDbPlans;
        showOnNetworkStateHandler$doHandle$1.L$2 = map;
        showOnNetworkStateHandler$doHandle$1.L$3 = boolI;
        showOnNetworkStateHandler$doHandle$1.label = 1;
        Object objB2 = aVar.b(showOnNetworkStateHandler$doHandle$1);
        if (objB2 == objF) {
            return objF;
        }
        str2 = str;
        bool = boolI;
        objB = objB2;
        boolean zBooleanValue = ((Boolean) objB).booleanValue();
        if (!zBooleanValue ? bool == null || Intrinsics.c(bool, Boxing.a(false)) : bool == null || Intrinsics.c(bool, Boxing.a(true))) {
            return new AdPlansHitResponse(false, "当前网络状态 = " + zBooleanValue + " -- isShowOnNetwork = " + bool);
        }
        com.transsion.ad.monopoly.intercept.a aVarC = c();
        if (aVarC != null) {
            showOnNetworkStateHandler$doHandle$1.L$0 = null;
            showOnNetworkStateHandler$doHandle$1.L$1 = null;
            showOnNetworkStateHandler$doHandle$1.L$2 = null;
            showOnNetworkStateHandler$doHandle$1.L$3 = null;
            showOnNetworkStateHandler$doHandle$1.label = 2;
            objB = aVarC.b(str2, mbAdDbPlans, map, showOnNetworkStateHandler$doHandle$1);
            if (objB == objF) {
                return objF;
            }
            adPlansHitResponse = (AdPlansHitResponse) objB;
            if (adPlansHitResponse != null) {
                return adPlansHitResponse;
            }
        }
        return e();
    }
}

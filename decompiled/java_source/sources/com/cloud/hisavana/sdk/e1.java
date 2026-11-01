package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class e1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f22423c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f22424a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f22425b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a(List list) {
            e1 e1Var;
            if (list == null) {
                return CollectionsKt.l();
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ConfigCodeSeatDTO configCodeSeatDTO = (ConfigCodeSeatDTO) it.next();
                String codeSeatId = configCodeSeatDTO.getCodeSeatId();
                if (codeSeatId != null) {
                    Intrinsics.e(codeSeatId);
                    e1Var = new e1(codeSeatId, GsonUtil.d(configCodeSeatDTO));
                } else {
                    e1Var = null;
                }
                if (e1Var != null) {
                    arrayList.add(e1Var);
                }
            }
            return arrayList;
        }
    }

    public e1(String codeSeatId, String str) {
        Intrinsics.h(codeSeatId, "codeSeatId");
        this.f22424a = codeSeatId;
        this.f22425b = str;
    }

    public final String a() {
        return this.f22424a;
    }

    public final String b() {
        return this.f22425b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e1)) {
            return false;
        }
        e1 e1Var = (e1) obj;
        return Intrinsics.c(this.f22424a, e1Var.f22424a) && Intrinsics.c(this.f22425b, e1Var.f22425b);
    }

    public int hashCode() {
        int iHashCode = this.f22424a.hashCode() * 31;
        String str = this.f22425b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "CloudConfigEntity(codeSeatId=" + this.f22424a + ", code_seat_bean=" + this.f22425b + ')';
    }
}

package com.cloud.hisavana.sdk;

import android.view.ViewGroup;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
public abstract class m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f22644a = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(J0 j11, AdsDTO adsDTO, ViewGroup viewGroup, List list) {
            if (j11 != null) {
                j11.b(adsDTO, viewGroup, list);
            }
        }
    }

    public static final void a(J0 j11, AdsDTO adsDTO, ViewGroup viewGroup, List list) {
        f22644a.a(j11, adsDTO, viewGroup, list);
    }
}

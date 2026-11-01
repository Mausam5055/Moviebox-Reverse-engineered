package pi;

import android.text.TextUtils;
import com.transsion.ad.monopoly.model.AdPlans;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes6.dex */
@Retention(RetentionPolicy.SOURCE)
public @interface b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f72460a = a.f72461a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f72461a = new a();

        private a() {
        }

        public final boolean a(AdPlans adPlans) {
            return TextUtils.equals("AdShowFinal", adPlans != null ? adPlans.getAdShowLevel() : null);
        }
    }
}

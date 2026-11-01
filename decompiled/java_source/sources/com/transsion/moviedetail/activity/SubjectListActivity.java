package com.transsion.moviedetail.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.tn.lib.view.TitleLayout;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.moviedetail.fragment.SubjectListFragment;
import com.transsion.usercenter.R$id;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import jg.c;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import nh.m;
import th.a;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 72\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00018B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0019H\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001d\u0010\u000fR$\u0010#\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010\nR*\u0010,\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R$\u00102\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u0010\u000f\"\u0004\b0\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105¨\u00069"}, d2 = {"Lcom/transsion/moviedetail/activity/SubjectListActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lth/a;", "<init>", "()V", "", "F0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "G0", "()Lth/a;", "", "i0", "()Ljava/lang/String;", "o0", "p0", "n0", "s0", "retryLoadData", "", "isTranslucent", "()Z", "r0", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "getPageName", "i", "Landroid/os/Bundle;", "getParams", "()Landroid/os/Bundle;", "setParams", "params", "Ljava/lang/Class;", "Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;", "j", "Ljava/lang/Class;", "getTypeClass", "()Ljava/lang/Class;", "setTypeClass", "(Ljava/lang/Class;)V", "typeClass", CampaignEx.JSON_KEY_AD_K, "Ljava/lang/String;", "getMTitle", "setMTitle", "(Ljava/lang/String;)V", "mTitle", "Landroidx/fragment/app/Fragment;", "l", "Landroidx/fragment/app/Fragment;", "mFragment", "m", "a", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubjectListActivity extends BaseNewActivity<a> {

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private Bundle params;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private Class typeClass;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private String mTitle;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private Fragment mFragment;

    /* JADX INFO: renamed from: com.transsion.moviedetail.activity.SubjectListActivity$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, Bundle params, Class type, String str) {
            Intrinsics.h(context, "context");
            Intrinsics.h(params, "params");
            Intrinsics.h(type, "type");
            Intent intent = new Intent(context, (Class<?>) SubjectListActivity.class);
            intent.putExtra("subject_params_key", params);
            intent.putExtra("view_model_type", type);
            intent.putExtra("subject_params_title", str);
            context.startActivity(intent);
        }
    }

    private final void F0() {
        SubjectListFragment subjectListFragmentA;
        Class cls = this.typeClass;
        if (cls == null) {
            finish();
            return;
        }
        Fragment fragmentK0 = getSupportFragmentManager().k0("subject_fragment_tag");
        if (fragmentK0 instanceof SubjectListFragment) {
            subjectListFragmentA = (SubjectListFragment) fragmentK0;
        } else {
            SubjectListFragment.Companion aVar = SubjectListFragment.INSTANCE;
            Bundle bundle = this.params;
            if (bundle == null) {
                bundle = new Bundle();
            }
            subjectListFragmentA = aVar.a(bundle, cls);
        }
        this.mFragment = subjectListFragmentA;
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        w wVarP = supportFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        Fragment fragment = this.mFragment;
        if (fragment != null) {
            wVarP.t(R$id.container, fragment, "subject_fragment_tag");
        }
        wVarP.j();
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: G0, reason: merged with bridge method [inline-methods] */
    public a getViewBinding() {
        a aVarC = a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public String getPageName() {
        return "post_list";
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public String i0() {
        return "";
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void n0() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void o0() {
        if (this.typeClass == null) {
            Intent intent = getIntent();
            Serializable serializableExtra = intent.getSerializableExtra("view_model_type");
            this.typeClass = serializableExtra instanceof Class ? (Class) serializableExtra : null;
            this.params = intent.getBundleExtra("subject_params_key");
            this.mTitle = intent.getStringExtra("subject_params_title");
        }
        ConstraintLayout constraintLayoutB = ((a) getMViewBinding()).getRoot();
        Intrinsics.g(constraintLayoutB, "getRoot(...)");
        c.e(constraintLayoutB);
        TitleLayout titleLayout = ((a) getMViewBinding()).f76214c;
        String str = this.mTitle;
        if (str == null) {
            str = "";
        }
        titleLayout.setTitleText(str);
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        Intrinsics.h(intent, "intent");
        super.onNewIntent(intent);
        setIntent(intent);
        F0();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void p0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean r0() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void retryLoadData() {
        z0();
        if (!m.f70474a.e()) {
            B0();
        } else {
            x0();
            s0();
        }
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void s0() {
        F0();
    }
}

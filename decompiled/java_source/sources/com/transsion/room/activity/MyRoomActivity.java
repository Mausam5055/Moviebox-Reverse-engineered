package com.transsion.room.activity;

import ak.x;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import androidx.p009lifecycle.Lifecycle;
import bq.f;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.room.R$id;
import com.transsion.room.R$string;
import com.transsion.room.activity.MyRoomActivity;
import com.transsion.room.fragment.RoomsFragment;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.JoinRoomEvent;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import dz.a;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.y0;
import nh.m;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 ,2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001-B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J)\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001e\u0010\u0005J\u000f\u0010\u001f\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\bH\u0016¢\u0006\u0004\b \u0010\u0005J\u000f\u0010!\u001a\u00020\u000bH\u0016¢\u0006\u0004\b!\u0010\rR\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010(\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010+\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006."}, d2 = {"Lcom/transsion/room/activity/MyRoomActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lbq/f;", "Ldz/a;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "", "i0", "()Ljava/lang/String;", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "G0", "()Lbq/f;", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "retryLoadData", "o0", "p0", "n0", "s0", "getPageName", "Lcom/transsion/room/fragment/RoomsFragment;", "i", "Lcom/transsion/room/fragment/RoomsFragment;", "mFragment", "j", "Ljava/lang/String;", "mUserId", CampaignEx.JSON_KEY_AD_K, "Z", "isSelf", "l", "a", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MyRoomActivity extends BaseNewActivity<f> implements a {

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private RoomsFragment mFragment;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String mUserId = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean isSelf;

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H0(MyRoomActivity myRoomActivity, JoinRoomEvent value) {
        RoomsFragment roomsFragment;
        Intrinsics.h(value, "value");
        try {
            Result.Companion companion = Result.INSTANCE;
            if (!value.getJoin() && (roomsFragment = myRoomActivity.mFragment) != null) {
                roomsFragment.G0();
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        return Unit.f67061a;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: G0, reason: merged with bridge method [inline-methods] */
    public f getViewBinding() {
        f fVarC = f.c(getLayoutInflater());
        Intrinsics.g(fVarC, "inflate(...)");
        return fVarC;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public String getPageName() {
        return "myrooms";
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public String i0() {
        String string = getString(R$string.str_room_title);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isChangeStatusBar() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isStatusDark() {
        return !x.f658a.a();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void n0() {
        Function1 function1 = new Function1() { // from class: zp.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MyRoomActivity.H0(this.f79447a, (JoinRoomEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = JoinRoomEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, y0.c().q(), false, function1);
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void o0() {
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        RoomsFragment roomsFragment;
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 10086 && resultCode == -1 && (roomsFragment = this.mFragment) != null) {
            roomsFragment.G0();
        }
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        Intent intent = getIntent();
        if (intent != null) {
            this.mUserId = intent.getStringExtra("userId");
            this.isSelf = intent.getBooleanExtra("isSelf", false);
        }
        super.onCreate(savedInstanceState);
    }

    @Override // dz.a
    public void onLogin(UserInfo userInfo) {
        a.C0737a.a(this, userInfo);
    }

    @Override // dz.a
    public void onLogout() {
        a.C0737a.b(this);
    }

    @Override // dz.a
    public void onUpdateUserInfo(UserInfo userInfo) {
        a.C0737a.c(this, userInfo);
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void p0() {
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
        if (this.mFragment == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
            w wVarP = supportFragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction()");
            RoomsFragment roomsFragmentA = RoomsFragment.INSTANCE.a(this.mUserId, this.isSelf);
            wVarP.s(R$id.flContent, roomsFragmentA);
            this.mFragment = roomsFragmentA;
            wVarP.j();
        }
    }
}

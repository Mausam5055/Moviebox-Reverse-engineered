package com.transsion.member.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;
import com.transsion.member.R$mipmap;
import com.transsion.member.R$string;
import com.transsion.member.view.CheckInView;
import com.transsion.member.view.GradientTextView;
import com.transsion.memberapi.MemberTaskCheckInInfo;
import com.transsion.memberapi.MemberTaskItemCheckInInfo;
import com.transsion.memberapi.MemberTaskSubmitCheckInRes;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 I2\u00020\u0001:\u0001JB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J-\u0010\u0015\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u00122\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0019\u001a\u00020\u00042\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ!\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010)\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010/\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010,R\u0016\u00102\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00105\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R3\u0010<\u001a\u001f\u0012\u0013\u0012\u00110*¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(9\u0012\u0004\u0012\u00020\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u001b\u0010B\u001a\u00020=8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b>\u0010?\u001a\u0004\b@\u0010ARH\u0010H\u001a4\u0012\u0013\u0012\u00110*¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(D\u0012\u0013\u0012\u00110*¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(E\u0012\u0004\u0012\u00020\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010G¨\u0006K"}, d2 = {"Lcom/transsion/member/dialog/MemberTaskCheckInDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "initView", "", "index", "u0", "(I)V", "", NotificationCompat.CATEGORY_MESSAGE, "D0", "(Ljava/lang/String;)V", "Lcom/transsion/memberapi/MemberTaskCheckInInfo;", WebConstants.FIELD_ITEM, "B0", "(Lcom/transsion/memberapi/MemberTaskCheckInInfo;)V", "Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;", "", "extMap", "C0", "(Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;Ljava/util/Map;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lwm/g;", "c", "Lwm/g;", "bind", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "dialogIgnoreTime", "", "e", "Z", "dialogIgnoreSwitcher", "f", "checkInSubmitting", "g", "I", "routeTabId", "h", "Lcom/transsion/memberapi/MemberTaskCheckInInfo;", "checkInInfo", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "checkInDone", "i", "Lkotlin/jvm/functions/Function1;", "onCheckInDoneListener", "Lcom/transsion/member/f;", "j", "Lkotlin/Lazy;", "v0", "()Lcom/transsion/member/f;", "checkInViewModel", "Lkotlin/Function2;", "isBlock", "isShow", CampaignEx.JSON_KEY_AD_K, "Lkotlin/jvm/functions/Function2;", "mCallback", "l", "a", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MemberTaskCheckInDialog extends BaseDialog {

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f46489m = 8;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private wm.g bind;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final String dialogIgnoreTime;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean dialogIgnoreSwitcher;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private boolean checkInSubmitting;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int routeTabId;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private MemberTaskCheckInInfo checkInInfo;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private Function1 onCheckInDoneListener;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final Lazy checkInViewModel;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private Function2 mCallback;

    /* JADX INFO: renamed from: com.transsion.member.dialog.MemberTaskCheckInDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String b() {
            String str = new SimpleDateFormat("yyyyMMdd", Locale.getDefault()).format(new Date(Calendar.getInstance().getTimeInMillis() - ((long) 14400000)));
            Intrinsics.g(str, "format(...)");
            return str;
        }
    }

    public static final class b implements CheckInView.d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CheckInView f46500b;

        b(CheckInView checkInView) {
            this.f46500b = checkInView;
        }

        @Override // com.transsion.member.view.CheckInView.d
        public void a(CheckInView.b holder, int i11) {
            List<MemberTaskItemCheckInInfo> checkInList;
            MemberTaskItemCheckInInfo memberTaskItemCheckInInfo;
            Intrinsics.h(holder, "holder");
            ImageView imageView = (ImageView) holder.itemView.findViewById(R$id.tag_iv);
            TextView textView = (TextView) holder.itemView.findViewById(R$id.member_point);
            MemberTaskCheckInInfo memberTaskCheckInInfo = MemberTaskCheckInDialog.this.checkInInfo;
            if (memberTaskCheckInInfo == null || (checkInList = memberTaskCheckInInfo.getCheckInList()) == null || (memberTaskItemCheckInInfo = checkInList.get(i11)) == null) {
                return;
            }
            if (textView != null) {
                textView.setText("+" + memberTaskItemCheckInInfo.getRewardAmount());
            }
            if (holder.f() == 2 || holder.f() == 5) {
                if (memberTaskItemCheckInInfo.isToday() && MemberTaskCheckInDialog.this.checkInSubmitting) {
                    View viewFindViewById = holder.itemView.findViewById(R$id.member_check_in_tv);
                    if (viewFindViewById != null) {
                        jg.c.g(viewFindViewById);
                    }
                    View viewFindViewById2 = holder.itemView.findViewById(R$id.member_check_in_pb);
                    if (viewFindViewById2 != null) {
                        jg.c.k(viewFindViewById2);
                    }
                } else {
                    View viewFindViewById3 = holder.itemView.findViewById(R$id.member_check_in_tv);
                    if (viewFindViewById3 != null) {
                        jg.c.k(viewFindViewById3);
                    }
                    View viewFindViewById4 = holder.itemView.findViewById(R$id.member_check_in_pb);
                    if (viewFindViewById4 != null) {
                        jg.c.g(viewFindViewById4);
                    }
                }
            }
            if (imageView != null) {
                imageView.setImageResource(memberTaskItemCheckInInfo.getRewardType() == 1 ? R$mipmap.ic_member_small : R$mipmap.ic_member_points);
            }
            TextView textView2 = (TextView) holder.itemView.findViewById(R$id.member_check_in);
            if (textView2 != null) {
                textView2.setText(this.f46500b.getContext().getString(R$string.member_task_day_tip, Integer.valueOf(i11 + 1)));
            }
        }

        @Override // com.transsion.member.view.CheckInView.d
        public int b(int i11) {
            List<MemberTaskItemCheckInInfo> checkInList;
            MemberTaskItemCheckInInfo memberTaskItemCheckInInfo;
            List<MemberTaskItemCheckInInfo> checkInList2;
            MemberTaskCheckInInfo memberTaskCheckInInfo = MemberTaskCheckInDialog.this.checkInInfo;
            if (memberTaskCheckInInfo == null || (checkInList = memberTaskCheckInInfo.getCheckInList()) == null || (memberTaskItemCheckInInfo = checkInList.get(i11)) == null) {
                return 5;
            }
            MemberTaskCheckInInfo memberTaskCheckInInfo2 = MemberTaskCheckInDialog.this.checkInInfo;
            boolean z10 = i11 == ((memberTaskCheckInInfo2 == null || (checkInList2 = memberTaskCheckInInfo2.getCheckInList()) == null) ? 0 : checkInList2.size()) - 1;
            if (memberTaskItemCheckInInfo.getHasCheckIn()) {
                return z10 ? 4 : 1;
            }
            if (memberTaskItemCheckInInfo.isToday()) {
                return z10 ? 5 : 2;
            }
            return z10 ? 6 : 3;
        }
    }

    public MemberTaskCheckInDialog() {
        super(R$layout.dialog_member_check_in_layout);
        this.dialogIgnoreTime = INSTANCE.b();
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.member.dialog.MemberTaskCheckInDialog$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.checkInViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(com.transsion.member.f.class), new Function0<x0>() { // from class: com.transsion.member.dialog.MemberTaskCheckInDialog$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.member.dialog.MemberTaskCheckInDialog$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(MemberTaskCheckInDialog memberTaskCheckInDialog, View view) {
        memberTaskCheckInDialog.dismissAllowingStateLoss();
    }

    private final void B0(MemberTaskCheckInInfo item) {
        HashMap map = new HashMap();
        map.put("event_type", "task_browse");
        map.put("taskSubType", PrepareException.ERROR_MANIFEST_INFO);
        map.put("showClaim", "true");
        com.transsion.baselib.helper.a.f43262a.a("member_check_in_dialog", map);
    }

    private final void C0(MemberTaskItemCheckInInfo item, Map extMap) {
        HashMap map = new HashMap();
        map.put("event_type", "task_click");
        map.put("taskSubType", PrepareException.ERROR_MANIFEST_INFO);
        map.put("rewardType", String.valueOf(item != null ? Integer.valueOf(item.getRewardType()) : null));
        map.put("rewardAmount", String.valueOf(item != null ? Integer.valueOf(item.getRewardAmount()) : null));
        map.putAll(extMap);
        com.transsion.baselib.helper.a.f43262a.b("member_check_in_dialog", map);
    }

    private final void D0(String msg) {
        com.tn.lib.widget.toast.core.h.f41479a.l(msg);
    }

    private final void initView() {
        AppCompatImageView appCompatImageView;
        GradientTextView gradientTextView;
        CheckBox checkBox;
        final CheckInView checkInView;
        B0(this.checkInInfo);
        wm.g gVar = this.bind;
        if (gVar != null && (checkInView = gVar.f77751f) != null) {
            checkInView.setDataViewBinder(new b(checkInView));
            checkInView.setItemClicker(new Function2() { // from class: com.transsion.member.dialog.w
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return MemberTaskCheckInDialog.x0(checkInView, this, ((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            });
        }
        wm.g gVar2 = this.bind;
        if (gVar2 != null && (checkBox = gVar2.f77747b) != null) {
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.transsion.member.dialog.x
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                    MemberTaskCheckInDialog.y0(this.f46550a, compoundButton, z10);
                }
            });
        }
        wm.g gVar3 = this.bind;
        if (gVar3 != null && (gradientTextView = gVar3.f77748c) != null) {
            gradientTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.member.dialog.y
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MemberTaskCheckInDialog.z0(this.f46551a, view);
                }
            });
        }
        wm.g gVar4 = this.bind;
        if (gVar4 != null && (appCompatImageView = gVar4.f77750e) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.member.dialog.z
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MemberTaskCheckInDialog.A0(this.f46552a, view);
                }
            });
        }
        Bundle arguments = getArguments();
        this.routeTabId = arguments != null ? arguments.getInt("key_routetabid") : 0;
        Bundle arguments2 = getArguments();
        Serializable serializable = arguments2 != null ? arguments2.getSerializable("key_check_in_info") : null;
        Intrinsics.f(serializable, "null cannot be cast to non-null type com.transsion.memberapi.MemberTaskCheckInInfo");
        this.checkInInfo = (MemberTaskCheckInInfo) serializable;
        v0().f().j(getViewLifecycleOwner(), new i(new Function1() { // from class: com.transsion.member.dialog.a0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MemberTaskCheckInDialog.w0(this.f46522a, (MemberTaskSubmitCheckInRes) obj);
            }
        }));
    }

    private final void u0(int index) {
        CheckInView checkInView;
        this.checkInSubmitting = true;
        wm.g gVar = this.bind;
        if (gVar != null && (checkInView = gVar.f77751f) != null) {
            checkInView.notifyItemCheckInStateChange(index);
        }
        v0().e();
    }

    private final com.transsion.member.f v0() {
        return (com.transsion.member.f) this.checkInViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w0(MemberTaskCheckInDialog memberTaskCheckInDialog, MemberTaskSubmitCheckInRes memberTaskSubmitCheckInRes) {
        MemberTaskItemCheckInInfo memberTaskItemCheckInInfo;
        CheckInView checkInView;
        List<MemberTaskItemCheckInInfo> checkInList;
        Object next;
        String date;
        CheckInView checkInView2;
        String date2;
        List<MemberTaskItemCheckInInfo> checkInList2;
        Object next2;
        memberTaskCheckInDialog.checkInSubmitting = false;
        MemberTaskCheckInInfo memberTaskCheckInInfo = memberTaskCheckInDialog.checkInInfo;
        if (memberTaskCheckInInfo == null || (checkInList2 = memberTaskCheckInInfo.getCheckInList()) == null) {
            memberTaskItemCheckInInfo = null;
        } else {
            Iterator<T> it = checkInList2.iterator();
            do {
                if (!it.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it.next();
            } while (!((MemberTaskItemCheckInInfo) next2).isToday());
            memberTaskItemCheckInInfo = (MemberTaskItemCheckInInfo) next2;
        }
        String str = "";
        if (memberTaskSubmitCheckInRes == null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("event_detail", "task_check_in_item_fail");
            if (memberTaskItemCheckInInfo != null && (date2 = memberTaskItemCheckInInfo.getDate()) != null) {
                str = date2;
            }
            linkedHashMap.put("date", str);
            Unit unit = Unit.f67061a;
            memberTaskCheckInDialog.C0(memberTaskItemCheckInInfo, linkedHashMap);
            try {
                Result.Companion companion = Result.INSTANCE;
                wm.g gVar = memberTaskCheckInDialog.bind;
                if (gVar != null && (checkInView2 = gVar.f77751f) != null) {
                    checkInView2.notifyAllChange();
                }
                String string = memberTaskCheckInDialog.getString(R$string.member_reward_receive_fault_tips);
                Intrinsics.g(string, "getString(...)");
                memberTaskCheckInDialog.D0(string);
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        } else {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            linkedHashMap2.put("event_detail", "task_check_in_item_success");
            if (memberTaskItemCheckInInfo != null && (date = memberTaskItemCheckInInfo.getDate()) != null) {
                str = date;
            }
            linkedHashMap2.put("date", str);
            Unit unit2 = Unit.f67061a;
            memberTaskCheckInDialog.C0(memberTaskItemCheckInInfo, linkedHashMap2);
            try {
                Result.Companion companion3 = Result.INSTANCE;
                MemberTaskCheckInInfo memberTaskCheckInInfo2 = memberTaskCheckInDialog.checkInInfo;
                if (memberTaskCheckInInfo2 != null && (checkInList = memberTaskCheckInInfo2.getCheckInList()) != null) {
                    Iterator<T> it2 = checkInList.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                    } while (!((MemberTaskItemCheckInInfo) next).isToday());
                    MemberTaskItemCheckInInfo memberTaskItemCheckInInfo2 = (MemberTaskItemCheckInInfo) next;
                    if (memberTaskItemCheckInInfo2 != null) {
                        memberTaskItemCheckInInfo2.setHasCheckIn(true);
                    }
                }
                StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
                String string2 = memberTaskCheckInDialog.getString((memberTaskItemCheckInInfo == null || memberTaskItemCheckInInfo.getRewardType() != 1) ? R$string.member_reward_points_receive_tips : R$string.member_claimed_succeed_days);
                Intrinsics.g(string2, "getString(...)");
                String str2 = String.format(string2, Arrays.copyOf(new Object[]{memberTaskItemCheckInInfo != null ? Integer.valueOf(memberTaskItemCheckInInfo.getRewardAmount()) : null}, 1));
                Intrinsics.g(str2, "format(...)");
                memberTaskCheckInDialog.D0(str2);
                Function1 function1 = memberTaskCheckInDialog.onCheckInDoneListener;
                if (function1 != null) {
                    function1.invoke(Boolean.TRUE);
                }
                memberTaskCheckInDialog.checkInSubmitting = false;
                wm.g gVar2 = memberTaskCheckInDialog.bind;
                if (gVar2 != null && (checkInView = gVar2.f77751f) != null) {
                    checkInView.notifyAllChange();
                }
                memberTaskCheckInDialog.dismissAllowingStateLoss();
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th3) {
                Result.Companion companion4 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th3));
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x0(CheckInView checkInView, MemberTaskCheckInDialog memberTaskCheckInDialog, int i11, int i12) {
        List<MemberTaskItemCheckInInfo> checkInList;
        MemberTaskItemCheckInInfo memberTaskItemCheckInInfo;
        List<MemberTaskItemCheckInInfo> checkInList2;
        if (i12 == 2 || i12 == 5) {
            if (com.transsion.baseui.util.c.f43504a.a(checkInView.getId(), 2000L)) {
                return Unit.f67061a;
            }
            MemberTaskCheckInInfo memberTaskCheckInInfo = memberTaskCheckInDialog.checkInInfo;
            MemberTaskItemCheckInInfo memberTaskItemCheckInInfo2 = null;
            MemberTaskItemCheckInInfo memberTaskItemCheckInInfo3 = (memberTaskCheckInInfo == null || (checkInList2 = memberTaskCheckInInfo.getCheckInList()) == null) ? null : checkInList2.get(i11);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("event_detail", "task_check_in_item");
            linkedHashMap.put("index", String.valueOf(i11));
            Unit unit = Unit.f67061a;
            memberTaskCheckInDialog.C0(memberTaskItemCheckInInfo3, linkedHashMap);
            try {
                Result.Companion companion = Result.INSTANCE;
                MemberTaskCheckInInfo memberTaskCheckInInfo2 = memberTaskCheckInDialog.checkInInfo;
                if (memberTaskCheckInInfo2 != null && (checkInList = memberTaskCheckInInfo2.getCheckInList()) != null && (memberTaskItemCheckInInfo = checkInList.get(i11)) != null) {
                    if (!memberTaskItemCheckInInfo.getHasCheckIn() && memberTaskItemCheckInInfo.isToday()) {
                        memberTaskCheckInDialog.u0(i11);
                    }
                    memberTaskItemCheckInInfo2 = memberTaskItemCheckInInfo;
                }
                Result.m454constructorimpl(memberTaskItemCheckInInfo2);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(MemberTaskCheckInDialog memberTaskCheckInDialog, CompoundButton compoundButton, boolean z10) {
        memberTaskCheckInDialog.dialogIgnoreSwitcher = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(MemberTaskCheckInDialog memberTaskCheckInDialog, View view) {
        Context context;
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 2000L) || (context = memberTaskCheckInDialog.getContext()) == null) {
            return;
        }
        zj.b.f79427a.c(context, "oneroom://com.community.oneroom?type=/main/tab&tabIndex=" + memberTaskCheckInDialog.routeTabId, null);
        memberTaskCheckInDialog.dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.center_DialogStyle);
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        if (this.dialogIgnoreSwitcher) {
            com.transsion.baselib.report.launch.b.f43370a.b().putString("key_member_task_check_in_show_time", this.dialogIgnoreTime);
        }
        Function2 function2 = this.mCallback;
        if (function2 != null) {
            Boolean bool = Boolean.FALSE;
            function2.invoke(bool, bool);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Window window;
        Window window2;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null && (window2 = dialog.getWindow()) != null) {
            window2.setLayout(-1, -2);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setGravity(17);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 != null) {
            dialog3.setCancelable(true);
        }
        Dialog dialog4 = getDialog();
        if (dialog4 != null) {
            dialog4.setCanceledOnTouchOutside(false);
        }
        this.bind = wm.g.a(view);
        initView();
        Function2 function2 = this.mCallback;
        if (function2 != null) {
            function2.invoke(Boolean.FALSE, Boolean.TRUE);
        }
    }
}

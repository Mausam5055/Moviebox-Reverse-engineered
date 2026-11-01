package com.transsion.usercenter.me.adapter;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.kids.KidsAccountManager;
import com.transsion.baselib.kids.KidsProfile;
import com.transsion.baseui.widget.GradientBorderTagView;
import com.transsion.usercenter.R$drawable;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$mipmap;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.edit.ProfileEditCenterActivity;
import com.transsion.usercenter.kids.AccountSwitchDialog;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import java.io.File;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b0 extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final o f56915e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private UserInfo f56916f;

    /* JADX WARN: Multi-variable type inference failed */
    public b0() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public b0(o oVar) {
        this.f56915e = oVar;
    }

    public /* synthetic */ b0(o oVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : oVar);
    }

    private final boolean C() {
        UserInfo userInfo = this.f56916f;
        return userInfo == null || (userInfo != null && userInfo.getUserType() == 0);
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00ec  */
    private final void D(BaseViewHolder baseViewHolder, UserInfo userInfo) {
        int i11;
        Integer gender;
        boolean z10;
        Object objM454constructorimpl;
        Integer age;
        Integer age2;
        boolean z11 = true;
        KidsProfile kidsProfileF = KidsAccountManager.f43286a.f();
        TextView textView = (TextView) baseViewHolder.getView(R$id.nameTv);
        Unit unit = null;
        textView.setText(kidsProfileF != null ? kidsProfileF.getName() : null);
        textView.setCompoundDrawables(null, null, null, null);
        GradientBorderTagView gradientBorderTagView = (GradientBorderTagView) baseViewHolder.getView(R$id.safeKidsTv);
        gradientBorderTagView.setVisibility(ak.o.f646a.j() ? 0 : 8);
        String string = Utils.a().getResources().getString(R$string.user_switch_profile);
        Intrinsics.g(string, "getString(...)");
        gradientBorderTagView.setText(string);
        ((TextView) baseViewHolder.getView(R$id.idTv)).setText(Utils.a().getResources().getString(R$string.user_id_show, userInfo != null ? userInfo.getUsername() : null));
        TextView textView2 = (TextView) baseViewHolder.getView(R$id.genderTv);
        if ((kidsProfileF != null ? kidsProfileF.getGender() : null) == null) {
            i11 = 0;
        } else {
            i11 = (kidsProfileF == null || (gender = kidsProfileF.getGender()) == null || gender.intValue() != 1) ? R$mipmap.profile_female : R$mipmap.profile_man;
        }
        textView2.setCompoundDrawablesWithIntrinsicBounds(i11, 0, 0, 0);
        if (((kidsProfileF == null || (age2 = kidsProfileF.getAge()) == null) ? 0 : age2.intValue()) <= 0) {
            textView2.setText("");
        } else {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("");
            jn.e.f66245a.b(spannableStringBuilder);
            spannableStringBuilder.append((CharSequence) String.valueOf(kidsProfileF != null ? kidsProfileF.getAge() : null));
            textView2.setText(spannableStringBuilder);
        }
        if ((kidsProfileF != null ? kidsProfileF.getGender() : null) != null) {
            z10 = true;
        } else {
            if (((kidsProfileF == null || (age = kidsProfileF.getAge()) == null) ? 0 : age.intValue()) > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        textView2.setVisibility(z10 ? 0 : 8);
        ImageView imageView = (ImageView) baseViewHolder.getView(R$id.avatarIV);
        String avatarLocalPath = kidsProfileF != null ? kidsProfileF.getAvatarLocalPath() : null;
        if (avatarLocalPath != null && avatarLocalPath.length() != 0) {
            z11 = false;
        }
        if (!z11) {
            Intrinsics.e(Glide.with(k()).load2(new File(avatarLocalPath)).into(imageView));
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            if (imageView != null) {
                imageView.setImageResource(R$drawable.ic_kids_avatar);
                unit = Unit.f67061a;
            }
            objM454constructorimpl = Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Result.m453boximpl(objM454constructorimpl);
    }

    private final void E(final BaseViewHolder baseViewHolder, final UserInfo userInfo) {
        int i11;
        Function1<MeItemInfo, Unit> function1R1;
        Function1<MeItemInfo, Unit> function1R2;
        boolean z10 = true;
        baseViewHolder.getView(R$id.loginTv).setVisibility(8);
        baseViewHolder.getView(R$id.avatarIV).setVisibility(0);
        View itemView = baseViewHolder.itemView;
        Intrinsics.g(itemView, "itemView");
        jg.c.c(itemView, 0L, new Function1() { // from class: com.transsion.usercenter.me.adapter.y
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return b0.F(userInfo, this, (View) obj);
            }
        }, 1, null);
        if (userInfo == null) {
            return;
        }
        if (ak.g.f639a.b()) {
            baseViewHolder.getView(R$id.tvLoginMyChannel).setVisibility(!ak.o.f646a.i() ? 0 : 8);
            ((TextView) baseViewHolder.getView(R$id.tvLoginMyChannel)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.me.adapter.z
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    b0.G(userInfo, baseViewHolder, view);
                }
            });
        }
        baseViewHolder.getView(R$id.safeKidsGroup).setVisibility(0);
        MeItemInfo meItemInfo = new MeItemInfo(1, userInfo);
        o oVar = this.f56915e;
        if (oVar != null && (function1R2 = oVar.R1()) != null) {
            function1R2.invoke(meItemInfo);
        }
        baseViewHolder.getView(R$id.safeKidsGroup).setVisibility(0);
        MeItemInfo meItemInfo2 = new MeItemInfo(1, userInfo);
        o oVar2 = this.f56915e;
        if (oVar2 != null && (function1R1 = oVar2.R1()) != null) {
            function1R1.invoke(meItemInfo2);
        }
        ak.o oVar3 = ak.o.f646a;
        if (oVar3.i()) {
            D(baseViewHolder, userInfo);
            return;
        }
        TextView textView = (TextView) baseViewHolder.getView(R$id.nameTv);
        textView.setText(userInfo.getNickname());
        textView.setCompoundDrawables(null, null, null, null);
        GradientBorderTagView gradientBorderTagView = (GradientBorderTagView) baseViewHolder.getView(R$id.safeKidsTv);
        gradientBorderTagView.setVisibility(oVar3.j() ? 0 : 8);
        String string = Utils.a().getResources().getString(R$string.user_safe_kids);
        Intrinsics.g(string, "getString(...)");
        gradientBorderTagView.setText(string);
        ((TextView) baseViewHolder.getView(R$id.idTv)).setText(Utils.a().getResources().getString(R$string.user_id_show, userInfo.getUsername()));
        TextView textView2 = (TextView) baseViewHolder.getView(R$id.genderTv);
        if (userInfo.getGender() == 0) {
            i11 = 0;
        } else {
            i11 = userInfo.getGender() == 1 ? R$mipmap.profile_man : R$mipmap.profile_female;
        }
        textView2.setCompoundDrawablesWithIntrinsicBounds(i11, 0, 0, 0);
        if (userInfo.getAge() <= 0) {
            textView2.setText("");
        } else {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("");
            jn.e.f66245a.b(spannableStringBuilder);
            spannableStringBuilder.append((CharSequence) String.valueOf(userInfo.getAge()));
            textView2.setText(spannableStringBuilder);
        }
        if (userInfo.getGender() == 0 && userInfo.getAge() <= 0) {
            z10 = false;
        }
        textView2.setVisibility(z10 ? 0 : 8);
        ImageView imageView = (ImageView) baseViewHolder.getView(R$id.avatarIV);
        ej.f.a aVar = ej.f.f61882a;
        Context context = imageView.getContext();
        Intrinsics.g(context, "getContext(...)");
        aVar.m(context).g(userInfo.getAvatar()).i(com.tn.lib.widget.R$mipmap.profile_default_avatar).d(imageView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F(UserInfo userInfo, b0 b0Var, View it) {
        Function1<MeItemInfo, Unit> function1Q1;
        Intrinsics.h(it, "it");
        MeItemInfo meItemInfo = new MeItemInfo(1, userInfo);
        if (ak.o.f646a.j()) {
            AccountSwitchDialog.Companion.b(AccountSwitchDialog.INSTANCE, false, 1, null).X(b0Var.k(), "AccountSwitchDialog");
        } else {
            ProfileEditCenterActivity.INSTANCE.a(b0Var.k(), userInfo);
        }
        o oVar = b0Var.f56915e;
        if (oVar != null && (function1Q1 = oVar.Q1()) != null) {
            function1Q1.invoke(meItemInfo);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(UserInfo userInfo, BaseViewHolder baseViewHolder, View view) {
        Navigator.x(TheRouter.c("/profile/user_profile").K("userId", userInfo.getUserId()), baseViewHolder.itemView.getContext(), null, 2, null);
    }

    private final void H(BaseViewHolder baseViewHolder, UserInfo userInfo) {
        baseViewHolder.getView(R$id.genderTv).setVisibility(8);
        baseViewHolder.getView(R$id.avatarIV).setVisibility(8);
        baseViewHolder.getView(R$id.safeKidsGroup).setVisibility(8);
        TextView textView = (TextView) baseViewHolder.getView(R$id.loginTv);
        textView.setVisibility(0);
        textView.setText(R$string.user_login);
        jg.c.c(textView, 0L, new Function1() { // from class: com.transsion.usercenter.me.adapter.a0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return b0.I(this.f56914a, (View) obj);
            }
        }, 1, null);
        baseViewHolder.itemView.setOnClickListener(null);
        TextView textView2 = (TextView) baseViewHolder.getView(R$id.nameTv);
        textView2.setText(R$string.user_login_title);
        textView2.setCompoundDrawables(null, null, null, null);
        ((TextView) baseViewHolder.getView(R$id.idTv)).setText(Utils.a().getResources().getString(R$string.user_id_show, userInfo != null ? userInfo.getUsername() : null));
        baseViewHolder.getView(R$id.tvLoginMyChannel).setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I(b0 b0Var, View it) {
        Intrinsics.h(it, "it");
        com.transsion.usercenter.me.u.f57015a.b("login");
        ILoginApi iLoginApi = (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
        if (iLoginApi != null) {
            iLoginApi.j(b0Var.k());
        }
        return Unit.f67061a;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, MeItemInfo item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Object data = item.getData();
        UserInfo userInfo = data instanceof UserInfo ? (UserInfo) data : null;
        this.f56916f = userInfo;
        com.transsion.usercenter.me.u.f57015a.d(userInfo != null ? userInfo.getUserId() : null);
        if (!C() || ak.o.f646a.i()) {
            E(helper, this.f56916f);
        } else {
            H(helper, this.f56916f);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 1;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.mine_item_header_layout;
    }
}

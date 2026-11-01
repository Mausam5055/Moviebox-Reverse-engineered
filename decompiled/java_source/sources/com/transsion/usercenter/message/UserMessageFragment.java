package com.transsion.usercenter.message;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.fragment.BaseListFragment;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$mipmap;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.message.UserMessageFragment;
import com.transsion.usercenter.message.adapter.a;
import com.transsion.usercenter.message.bean.MessageEntity;
import com.transsion.usercenter.message.model.PagerEntity;
import com.transsion.usercenter.message.model.ResponseMessage;
import com.transsion.usercenter.profile.bean.ProfileNewMessage;
import com.transsion.usercenter.profile.f;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import sw.d;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 92\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001:B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\tJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u001b\u001a\u0004\b!\u0010\"R\u0016\u0010&\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010(\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010%R\u0018\u0010,\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00102\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010/R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u00108\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00105¨\u0006;"}, d2 = {"Lcom/transsion/usercenter/message/UserMessageFragment;", "Lcom/transsion/baseui/fragment/BaseListFragment;", "Lcom/transsion/usercenter/message/bean/MessageEntity;", "<init>", "()V", "", "c1", "", "s0", "()Ljava/lang/String;", "getPageStateLayoutTitle", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "m0", "()Lcom/chad/library/adapter/base/BaseQuickAdapter;", "initViewData", "initViewModel", "initListener", "G0", "loadMore", "lazyLoadData", "retryLoadData", "Lsw/d;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "V0", "()Lsw/d;", "mViewModel", "Lcom/transsion/usercenter/profile/f;", "c", "W0", "()Lcom/transsion/usercenter/profile/f;", "noticeViewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "allType", "e", "mPage", "Landroid/view/View;", "f", "Landroid/view/View;", "header", "Landroidx/appcompat/widget/LinearLayoutCompat;", "g", "Landroidx/appcompat/widget/LinearLayoutCompat;", "mLikeLL", "h", "mCommentLL", "Landroidx/appcompat/widget/AppCompatTextView;", "i", "Landroidx/appcompat/widget/AppCompatTextView;", "mLikeText", "j", "mCommentText", CampaignEx.JSON_KEY_AD_K, "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UserMessageFragment extends BaseListFragment<MessageEntity> {

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy mViewModel = LazyKt.b(new Function0() { // from class: rw.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UserMessageFragment.a1(this.f74732a);
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy noticeViewModel = LazyKt.b(new Function0() { // from class: rw.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UserMessageFragment.b1(this.f74733a);
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String allType = "ALL";

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String mPage = "1";

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private View header;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private LinearLayoutCompat mLikeLL;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private LinearLayoutCompat mCommentLL;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private AppCompatTextView mLikeText;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private AppCompatTextView mCommentText;

    /* JADX INFO: renamed from: com.transsion.usercenter.message.UserMessageFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UserMessageFragment a() {
            return new UserMessageFragment();
        }
    }

    static final class b implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f57027a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f57027a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f57027a;
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
            this.f57027a.invoke(obj);
        }
    }

    private final d V0() {
        return (d) this.mViewModel.getValue();
    }

    private final f W0() {
        return (f) this.noticeViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X0(UserMessageFragment userMessageFragment, BaseQuickAdapter adapter, View view, int i11) {
        MessageEntity messageEntity;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i11);
        Intrinsics.f(item, "null cannot be cast to non-null type com.transsion.usercenter.message.bean.MessageEntity");
        MessageEntity messageEntity2 = (MessageEntity) item;
        int id2 = view.getId();
        if (id2 != R$id.rlLayout) {
            if ((id2 == R$id.imAvatar || id2 == R$id.tvNickName) && !Intrinsics.c(messageEntity2.getType(), a.I)) {
                Navigator.x(TheRouter.c("/profile/user_profile").K("userId", messageEntity2.getSendUid()), userMessageFragment.requireContext(), null, 2, null);
                return;
            }
            return;
        }
        BaseQuickAdapter mBaseAdapter = userMessageFragment.getMBaseAdapter();
        if (mBaseAdapter == null || (messageEntity = (MessageEntity) mBaseAdapter.getItem(i11)) == null) {
            return;
        }
        if (Intrinsics.c(messageEntity2.getType(), a.I)) {
            Navigator.x(TheRouter.c("/profile/message_detail").K("msg_content", messageEntity.getContent()).K("msg_nickname", messageEntity.getNickname()).K("msg_create_time", messageEntity.getCreatedAt()), userMessageFragment.requireContext(), null, 2, null);
        } else {
            Navigator.x(TheRouter.c("/post/detail").K("id", messageEntity.getTopicId()).K(WebConstants.PAGE_FROM, "system_message").z("video_load_more", false), userMessageFragment.requireContext(), null, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit Y0(UserMessageFragment userMessageFragment, ProfileNewMessage profileNewMessage) {
        TitleLayout titleLayout;
        TnTextView tvTitleText;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        if (profileNewMessage != null) {
            if (profileNewMessage.getLikeCnt() > 0 && (appCompatTextView2 = userMessageFragment.mLikeText) != null) {
                appCompatTextView2.setText(userMessageFragment.getString(R$string.profile_like) + "(" + (profileNewMessage.getLikeCnt() < 99 ? String.valueOf(profileNewMessage.getLikeCnt()) : "99+") + ")");
            }
            if (profileNewMessage.getCommentCnt() > 0 && (appCompatTextView = userMessageFragment.mCommentText) != null) {
                appCompatTextView.setText(userMessageFragment.getString(com.transsion.baseui.R$string.name_comments) + "(" + (profileNewMessage.getCommentCnt() < 99 ? String.valueOf(profileNewMessage.getCommentCnt()) : "99+") + ")");
            }
            bk.b bVar = (bk.b) userMessageFragment.getMViewBinding();
            if (bVar != null && (titleLayout = bVar.f16581e) != null && (tvTitleText = titleLayout.getTvTitleText()) != null) {
                if (profileNewMessage.getSystemCnt() + profileNewMessage.getLikeCnt() + profileNewMessage.getCommentCnt() > 0) {
                    tvTitleText.setCompoundDrawablesWithIntrinsicBounds(0, 0, R$mipmap.user_message_icon_new, 0);
                    tvTitleText.setCompoundDrawablePadding(8);
                } else {
                    tvTitleText.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Z0(UserMessageFragment userMessageFragment, ResponseMessage responseMessage) {
        List<MessageEntity> list;
        PagerEntity pager;
        if (responseMessage != null && (pager = responseMessage.getPager()) != null) {
            if (pager.getHasMore()) {
                userMessageFragment.mPage = pager.getNextPage();
                userMessageFragment.B0();
            } else {
                BaseListFragment.D0(userMessageFragment, false, 1, null);
            }
        }
        if (responseMessage == null || (list = responseMessage.getList()) == null) {
            userMessageFragment.N0();
        } else if (userMessageFragment.A0()) {
            userMessageFragment.I0(false);
            if (list.isEmpty()) {
                BaseListFragment.K0(userMessageFragment, null, 1, null);
            } else {
                BaseQuickAdapter mBaseAdapter = userMessageFragment.getMBaseAdapter();
                if (mBaseAdapter != null) {
                    mBaseAdapter.n1(list);
                }
            }
        } else {
            BaseQuickAdapter mBaseAdapter2 = userMessageFragment.getMBaseAdapter();
            if (mBaseAdapter2 != null) {
                mBaseAdapter2.q(list);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final d a1(UserMessageFragment userMessageFragment) {
        return (d) new v0(userMessageFragment).a(d.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final f b1(UserMessageFragment userMessageFragment) {
        return (f) new v0(userMessageFragment).a(f.class);
    }

    private final void c1() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.user_message_header_layout, (ViewGroup) null);
        this.header = viewInflate;
        this.mLikeLL = viewInflate != null ? (LinearLayoutCompat) viewInflate.findViewById(R$id.ll_like) : null;
        View view = this.header;
        this.mCommentLL = view != null ? (LinearLayoutCompat) view.findViewById(R$id.ll_comment) : null;
        View view2 = this.header;
        this.mLikeText = view2 != null ? (AppCompatTextView) view2.findViewById(R$id.tv_like) : null;
        View view3 = this.header;
        this.mCommentText = view3 != null ? (AppCompatTextView) view3.findViewById(R$id.tv_comment) : null;
        LinearLayoutCompat linearLayoutCompat = this.mLikeLL;
        if (linearLayoutCompat != null) {
            linearLayoutCompat.setOnClickListener(new View.OnClickListener() { // from class: rw.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    UserMessageFragment.d1(this.f74734a, view4);
                }
            });
        }
        LinearLayoutCompat linearLayoutCompat2 = this.mCommentLL;
        if (linearLayoutCompat2 != null) {
            linearLayoutCompat2.setOnClickListener(new View.OnClickListener() { // from class: rw.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    UserMessageFragment.e1(this.f74735a, view4);
                }
            });
        }
        if (this.header != null) {
            BaseQuickAdapter mBaseAdapter = getMBaseAdapter();
            if (mBaseAdapter != null) {
                View view4 = this.header;
                Intrinsics.e(view4);
                BaseQuickAdapter.k1(mBaseAdapter, view4, 0, 0, 6, null);
            }
            BaseQuickAdapter mBaseAdapter2 = getMBaseAdapter();
            if (mBaseAdapter2 != null) {
                mBaseAdapter2.m1(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d1(UserMessageFragment userMessageFragment, View view) {
        Navigator.x(TheRouter.c("/profile/user_room_message").K("msgType", "like"), userMessageFragment.requireContext(), null, 2, null);
        AppCompatTextView appCompatTextView = userMessageFragment.mLikeText;
        if (appCompatTextView != null) {
            appCompatTextView.setText(userMessageFragment.getString(R$string.profile_like));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e1(UserMessageFragment userMessageFragment, View view) {
        Navigator.x(TheRouter.c("/profile/user_room_message").K("msgType", "comment"), userMessageFragment.requireContext(), null, 2, null);
        AppCompatTextView appCompatTextView = userMessageFragment.mCommentText;
        if (appCompatTextView != null) {
            appCompatTextView.setText(userMessageFragment.getString(com.transsion.baseui.R$string.name_comments));
        }
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public void G0() {
        I0(true);
        this.mPage = "1";
        lazyLoadData();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        String string = getString(R$string.messages_title_name);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        super.initListener();
        BaseQuickAdapter mBaseAdapter = getMBaseAdapter();
        if (mBaseAdapter != null) {
            mBaseAdapter.l(R$id.rlLayout, R$id.imAvatar, R$id.tvNickName);
        }
        BaseQuickAdapter mBaseAdapter2 = getMBaseAdapter();
        if (mBaseAdapter2 != null) {
            mBaseAdapter2.s1(new p6.b() { // from class: rw.c
                @Override // p6.b
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                    UserMessageFragment.X0(this.f74731a, baseQuickAdapter, view, i11);
                }
            });
        }
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        super.initViewData();
        c1();
        BaseListFragment.K0(this, null, 1, null);
        I0(true);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        V0().d().j(this, new b(new Function1() { // from class: rw.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserMessageFragment.Z0(this.f74736a, (ResponseMessage) obj);
            }
        }));
        W0().g().j(this, new b(new Function1() { // from class: rw.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserMessageFragment.Y0(this.f74737a, (ProfileNewMessage) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.LazyFragment
    public void lazyLoadData() {
        if (Intrinsics.c(this.mPage, "1")) {
            W0().d();
        }
        V0().f(this.mPage, UserMessageType.SYSTEM.getValue());
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public void loadMore() {
        if (Intrinsics.c(this.mPage, "1")) {
            BaseListFragment.D0(this, false, 1, null);
        } else {
            lazyLoadData();
        }
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public BaseQuickAdapter m0() {
        return new a(0, 1, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b("system_message", false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        loadMore();
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public String s0() {
        String string = getString(R$string.messages_title_name);
        Intrinsics.g(string, "getString(...)");
        return string;
    }
}

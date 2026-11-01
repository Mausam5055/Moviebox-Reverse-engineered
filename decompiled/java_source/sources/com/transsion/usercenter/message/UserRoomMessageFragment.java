package com.transsion.usercenter.message;

import android.os.Bundle;
import android.view.View;
import androidx.p009lifecycle.c0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.toast.core.h;
import com.transsion.baseui.fragment.BaseListFragment;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.message.UserRoomMessageFragment;
import com.transsion.usercenter.message.adapter.a;
import com.transsion.usercenter.message.bean.MessageEntity;
import com.transsion.usercenter.message.model.PagerEntity;
import com.transsion.usercenter.message.model.ResponseMessage;
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
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 '2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\t\u0010\u0007J\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e0\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0019\u0010\u0004R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010$\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010!¨\u0006)"}, d2 = {"Lcom/transsion/usercenter/message/UserRoomMessageFragment;", "Lcom/transsion/baseui/fragment/BaseListFragment;", "Lcom/transsion/usercenter/message/bean/MessageEntity;", "<init>", "()V", "", "getPageName", "()Ljava/lang/String;", "s0", "getPageStateLayoutTitle", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "m0", "()Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "initViewData", "initViewModel", "initListener", "G0", "loadMore", "lazyLoadData", "retryLoadData", "receiveArguments", "Lsw/d;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "R0", "()Lsw/d;", "mViewModel", "c", "Ljava/lang/String;", "allType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "mPage", "e", "msgType", "f", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UserRoomMessageFragment extends BaseListFragment<MessageEntity> {

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy mViewModel = LazyKt.b(new Function0() { // from class: rw.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UserRoomMessageFragment.U0();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String allType = "ALL";

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String mPage = "1";

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String msgType;

    /* JADX INFO: renamed from: com.transsion.usercenter.message.UserRoomMessageFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UserRoomMessageFragment a(String str) {
            UserRoomMessageFragment userRoomMessageFragment = new UserRoomMessageFragment();
            Bundle bundle = new Bundle();
            bundle.putString("msgType", str);
            userRoomMessageFragment.setArguments(bundle);
            return userRoomMessageFragment;
        }
    }

    static final class b implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f57034a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f57034a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f57034a;
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
            this.f57034a.invoke(obj);
        }
    }

    private final d R0() {
        return (d) this.mViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S0(UserRoomMessageFragment userRoomMessageFragment, BaseQuickAdapter adapter, View view, int i11) {
        MessageEntity messageEntity;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i11);
        Intrinsics.f(item, "null cannot be cast to non-null type com.transsion.usercenter.message.bean.MessageEntity");
        MessageEntity messageEntity2 = (MessageEntity) item;
        int id2 = view.getId();
        if (id2 != R$id.clLayout) {
            if (id2 != R$id.iv_avatar || Intrinsics.c(messageEntity2.getType(), a.I)) {
                return;
            }
            Navigator.x(TheRouter.c("/profile/user_profile").K("userId", messageEntity2.getSendUid()), userRoomMessageFragment.requireContext(), null, 2, null);
            return;
        }
        BaseQuickAdapter mBaseAdapter = userRoomMessageFragment.getMBaseAdapter();
        if (mBaseAdapter == null || (messageEntity = (MessageEntity) mBaseAdapter.getItem(i11)) == null) {
            return;
        }
        if (Intrinsics.c(messageEntity2.getType(), a.I)) {
            Navigator.x(TheRouter.c("/profile/message_detail").K("msg_content", messageEntity.getContent()).K("msg_nickname", messageEntity.getNickname()).K("msg_create_time", messageEntity.getCreatedAt()), userRoomMessageFragment.requireContext(), null, 2, null);
            return;
        }
        boolean z10 = messageEntity.getCommentId().length() == 0;
        if (messageEntity.getCommentId().length() > 0 && Intrinsics.c(messageEntity.getCommentStatus(), "DELETED")) {
            h.f41479a.l(userRoomMessageFragment.getString(R$string.comment_deleted_tips));
        } else if (Intrinsics.c(messageEntity.getTopicType(), "UGC_VIDEO")) {
            Navigator.x(TheRouter.c("/ugc_video/detail").K("id", messageEntity.getTopicId()).F("ugc_bottom_fragment_selected", 1), userRoomMessageFragment.requireContext(), null, 2, null);
        } else {
            Navigator.x(TheRouter.c("/post/detail").K("id", messageEntity.getTopicId()).K(WebConstants.PAGE_FROM, "system_message").K("comment_id", messageEntity.getCommentId()).z("video_load_more", false).z("from_comment", z10), userRoomMessageFragment.requireContext(), null, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit T0(UserRoomMessageFragment userRoomMessageFragment, ResponseMessage responseMessage) {
        List<MessageEntity> list;
        PagerEntity pager;
        if (responseMessage != null && (pager = responseMessage.getPager()) != null) {
            if (pager.getHasMore()) {
                userRoomMessageFragment.mPage = pager.getNextPage();
                userRoomMessageFragment.B0();
            } else {
                BaseListFragment.D0(userRoomMessageFragment, false, 1, null);
            }
        }
        if (responseMessage == null || (list = responseMessage.getList()) == null) {
            userRoomMessageFragment.N0();
        } else if (userRoomMessageFragment.A0()) {
            userRoomMessageFragment.I0(false);
            if (list.isEmpty()) {
                BaseListFragment.K0(userRoomMessageFragment, null, 1, null);
            } else {
                BaseQuickAdapter mBaseAdapter = userRoomMessageFragment.getMBaseAdapter();
                if (mBaseAdapter != null) {
                    mBaseAdapter.n1(list);
                }
            }
        } else {
            BaseQuickAdapter mBaseAdapter2 = userRoomMessageFragment.getMBaseAdapter();
            if (mBaseAdapter2 != null) {
                mBaseAdapter2.q(list);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final d U0() {
        return new d();
    }

    private final String getPageName() {
        String str = this.msgType;
        return (!Intrinsics.c(str, "like") && Intrinsics.c(str, "comment")) ? "comment_message" : "like_message";
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public void G0() {
        I0(true);
        this.mPage = "1";
        lazyLoadData();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        String string = getString(R$string.user_messaeg_title);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        super.initListener();
        BaseQuickAdapter mBaseAdapter = getMBaseAdapter();
        if (mBaseAdapter != null) {
            mBaseAdapter.l(R$id.clLayout, R$id.iv_avatar);
        }
        BaseQuickAdapter mBaseAdapter2 = getMBaseAdapter();
        if (mBaseAdapter2 != null) {
            mBaseAdapter2.s1(new p6.b() { // from class: rw.l
                @Override // p6.b
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                    UserRoomMessageFragment.S0(this.f74739a, baseQuickAdapter, view, i11);
                }
            });
        }
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        super.initViewData();
        BaseListFragment.K0(this, null, 1, null);
        I0(true);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        R0().d().j(this, new b(new Function1() { // from class: rw.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UserRoomMessageFragment.T0(this.f74738a, (ResponseMessage) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.LazyFragment
    public void lazyLoadData() {
        R0().f(this.mPage, (Intrinsics.c(this.msgType, "like") ? UserMessageType.LIKE : UserMessageType.COMMENT).getValue());
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
        return new com.transsion.usercenter.message.adapter.b(0, 1, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b(getPageName(), false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void receiveArguments() {
        String string;
        super.receiveArguments();
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("msgType")) == null) {
            string = "like";
        }
        this.msgType = string;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        loadMore();
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public String s0() {
        return Intrinsics.c(this.msgType, "like") ? "Likes" : "Comments";
    }
}

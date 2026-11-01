package ty;

import com.transsion.user.action.sync.event.CommentEvent;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.JoinRoomEvent;
import com.transsnet.flow.event.sync.event.LikeEvent;
import com.transsnet.flow.event.sync.event.PublishEvent;
import com.transsnet.flow.event.sync.event.WatchLaterEvent;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f76417a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f76418b = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: ty.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b.b();
        }
    });

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return (b) b.f76418b.getValue();
        }
    }

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b b() {
        return new b();
    }

    public final void d(int i11, String commentId, String commentNum, String str) {
        Intrinsics.h(commentId, "commentId");
        Intrinsics.h(commentNum, "commentNum");
        CommentEvent commentEvent = new CommentEvent(i11 == 1, commentId, commentNum, str);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = CommentEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, commentEvent, 0L);
    }

    public final void e(String postId) {
        Intrinsics.h(postId, "postId");
        uy.b bVar = new uy.b(postId);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = uy.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, bVar, 0L);
    }

    public final void f(int i11, String groupId) {
        Intrinsics.h(groupId, "groupId");
        boolean z10 = false;
        if (i11 != 0 && i11 == 1) {
            z10 = true;
        }
        JoinRoomEvent joinRoomEvent = new JoinRoomEvent(z10, groupId);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = JoinRoomEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, joinRoomEvent, 0L);
    }

    public final void g(int i11, String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        LikeEvent likeEvent = new LikeEvent(i11 == 0, subjectId);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = LikeEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, likeEvent, 0L);
    }

    public final void h(String postId, String str, int i11) {
        Intrinsics.h(postId, "postId");
        try {
            PublishEvent publishEvent = new PublishEvent(postId, str, i11);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = PublishEvent.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, publishEvent, 0L);
        } catch (Exception unused) {
            PublishEvent publishEvent2 = new PublishEvent(postId, null, i11);
            FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name2 = PublishEvent.class.getName();
            Intrinsics.g(name2, "getName(...)");
            flowEventBus2.postEvent(name2, publishEvent2, 0L);
        }
    }

    public final void i(int i11, String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        boolean z10 = false;
        if (i11 != 0 && i11 == 1) {
            z10 = true;
        }
        WatchLaterEvent watchLaterEvent = new WatchLaterEvent(z10, subjectId);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = WatchLaterEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, watchLaterEvent, 0L);
    }
}

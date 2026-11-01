.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber$Cancellation;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Cancellation"
.end annotation


# instance fields
.field final synthetic this$0:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber$Cancellation;->this$0:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber$Cancellation;->this$0:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;->upstream:Lu10/d;

    invoke-interface {v0}, Lu10/d;->cancel()V

    return-void
.end method

.class Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroidx/dynamicanimation/animation/a$d;


# direct methods
.method constructor <init>(Landroidx/dynamicanimation/animation/a$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14$1;->this$0:Landroidx/dynamicanimation/animation/a$d;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/dynamicanimation/animation/a$d;->b:J

    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14$1;->this$0:Landroidx/dynamicanimation/animation/a$d;

    iget-object v0, v0, Landroidx/dynamicanimation/animation/a$c;->a:Landroidx/dynamicanimation/animation/a$a;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/a$a;->a()V

    return-void
.end method

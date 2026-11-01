.class Lcom/blankj/utilcode/util/LogUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$tagHead:Lcom/blankj/utilcode/util/q;

.field final synthetic val$type_low:I


# direct methods
.method constructor <init>(ILcom/blankj/utilcode/util/q;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$1;->val$type_low:I

    iput-object p3, p0, Lcom/blankj/utilcode/util/LogUtils$1;->val$body:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

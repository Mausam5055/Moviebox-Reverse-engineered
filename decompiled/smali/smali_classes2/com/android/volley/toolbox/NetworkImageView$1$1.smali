.class Lcom/android/volley/toolbox/NetworkImageView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/NetworkImageView$1;->a(Lcom/android/volley/toolbox/h$b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/volley/toolbox/NetworkImageView$1;

.field final synthetic val$response:Lcom/android/volley/toolbox/h$b;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/NetworkImageView$1;Lcom/android/volley/toolbox/h$b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1$1;->this$1:Lcom/android/volley/toolbox/NetworkImageView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1$1;->this$1:Lcom/android/volley/toolbox/NetworkImageView$1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/NetworkImageView$1;->a(Lcom/android/volley/toolbox/h$b;Z)V

    return-void
.end method

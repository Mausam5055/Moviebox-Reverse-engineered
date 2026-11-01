.class Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP$Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP$Sj;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP$Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP$Sj$1;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP$Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP$Sj$1;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP$Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP$Sj;->Sj:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->resume()V

    return-void
.end method

.class public final synthetic Lcom/transsion/wrapperad/view/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/a;->a:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;

    iput p2, p0, Lcom/transsion/wrapperad/view/a;->b:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/wrapperad/view/a;->a:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;

    iget v1, p0, Lcom/transsion/wrapperad/view/a;->b:F

    invoke-static {v0, v1}, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;->d(Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;F)V

    return-void
.end method

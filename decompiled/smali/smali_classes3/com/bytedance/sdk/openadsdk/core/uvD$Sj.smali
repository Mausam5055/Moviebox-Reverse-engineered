.class Lcom/bytedance/sdk/openadsdk/core/uvD$Sj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/uvD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sj"
.end annotation


# instance fields
.field private final Sj:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

.field private final sP:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/EjP/Jcg;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$Sj;->sP:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/uvD$Sj;->sP:Landroid/view/ViewGroup;

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/LD;->Sj(Landroid/view/View;)F

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->Sj(JF)V

    return-void
.end method

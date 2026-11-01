.class public Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;


# instance fields
.field private Dq:Landroid/view/View$OnTouchListener;

.field private EjP:Landroid/view/View;

.field private HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;

.field private Jcg:Lcom/bytedance/sdk/component/adexpress/vS/TzV;

.field private Sj:Landroid/content/Context;

.field private TEQ:Z

.field private TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

.field private Ym:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;

.field private aa:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

.field private sP:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

.field private uA:I

.field private vS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Sj:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Jcg()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Sj:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    iput-object p4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Ym:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;

    iput-object p5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->aa:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Jcg()V

    return-void
.end method

.method private Dq()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->pfr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "9"

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->vS:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "16"

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->vS:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "17"

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->vS:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "18"

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->vS:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const-string v0, "20"

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->vS:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const-string v0, "29"

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->vS:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const-string v0, "10"

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->vS:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method private Jcg()V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Ei()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->vS:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->db()I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->uA:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->pfr()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TEQ:Z

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Sj:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Ym:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;

    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->aa:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/TEQ;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;->TKC()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->EjP:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->HpB()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "#50000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->vS:Ljava/lang/String;

    const-string v2, "6"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "#99000000"

    const/4 v3, -0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EZ()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->gY()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/vS/TzV;

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Sj:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->gY()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Sj(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v4, v5}, Lcom/bytedance/sdk/component/adexpress/vS/TzV;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Jcg:Lcom/bytedance/sdk/component/adexpress/vS/TzV;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/vS/TzV;

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Sj:Landroid/content/Context;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v4, v5}, Lcom/bytedance/sdk/component/adexpress/vS/TzV;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Jcg:Lcom/bytedance/sdk/component/adexpress/vS/TzV;

    :goto_0
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Sj:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Jcg:Lcom/bytedance/sdk/component/adexpress/vS/TzV;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->vS:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Sj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EZ()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->gY()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->gY()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Sj(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Sj:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;->TKC()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;->TKC()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Sj(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;)Lcom/bytedance/sdk/component/adexpress/vS/TzV;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Jcg:Lcom/bytedance/sdk/component/adexpress/vS/TzV;

    return-object p0
.end method

.method private Sj(Landroid/view/ViewGroup;)V
    .locals 7

    const-string v0, "24"

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->EjP:Landroid/view/View;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->vS:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v4, "#80000000"

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v6, "29"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_1
    const-string v6, "25"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x14

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_3
    const-string v6, "23"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_4
    const-string v6, "22"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_5
    const-string v6, "20"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_6
    const-string v6, "18"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_7
    const-string v6, "17"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_8
    const-string v6, "16"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_9
    const-string v6, "14"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_a
    const-string v6, "13"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_b
    const-string v6, "12"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_c
    const-string v6, "11"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_d
    const-string v6, "10"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_e
    const-string v6, "9"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_0

    :cond_f
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_f
    const-string v6, "8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_0

    :cond_10
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_10
    const-string v6, "7"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_0

    :cond_11
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_11
    const-string v6, "6"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_0

    :cond_12
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_12
    const-string v6, "5"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_0

    :cond_13
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_13
    const-string v6, "2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_0

    :cond_14
    move v5, v1

    goto :goto_0

    :sswitch_14
    const-string v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_0

    :cond_15
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_15
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_0

    :cond_16
    move v5, v2

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->EjP:Landroid/view/View;

    if-eqz p1, :cond_17

    instance-of v0, p1, Lcom/bytedance/sdk/component/adexpress/vS/vS;

    if-eqz v0, :cond_17

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/vS/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/vS/vS;->getShakeView()Lcom/bytedance/sdk/component/adexpress/vS/sU;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->EjP:Landroid/view/View;

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/vS/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/vS/vS;->getShakeView()Lcom/bytedance/sdk/component/adexpress/vS/sU;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_17
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->uA:I

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;I)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq:Landroid/view/View$OnTouchListener;

    goto/16 :goto_2

    :pswitch_1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result p1

    if-eqz p1, :cond_20

    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Dq;

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TEQ:Z

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Dq;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq:Landroid/view/View$OnTouchListener;

    goto/16 :goto_2

    :pswitch_2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result p1

    if-eqz p1, :cond_20

    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq:Landroid/view/View$OnTouchListener;

    goto/16 :goto_2

    :pswitch_3
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Dq;

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TEQ:Z

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Dq;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq:Landroid/view/View$OnTouchListener;

    goto/16 :goto_2

    :cond_18
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Jcg;

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->uA:I

    invoke-direct {v0, p0, v2, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Jcg;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;ILandroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq:Landroid/view/View$OnTouchListener;

    goto/16 :goto_2

    :pswitch_4
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->uA:I

    invoke-direct {v0, p0, v2, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;ILandroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq:Landroid/view/View$OnTouchListener;

    goto/16 :goto_2

    :pswitch_5
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->EjP:Landroid/view/View;

    if-eqz p1, :cond_19

    instance-of v0, p1, Lcom/bytedance/sdk/component/adexpress/vS/wE;

    if-eqz v0, :cond_19

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/vS/wE;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/vS/wE;->getWriggleLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->EjP:Landroid/view/View;

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/vS/wE;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/vS/wE;->getWriggleLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_19
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->EjP:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_6
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->EjP:Landroid/view/View;

    if-eqz p1, :cond_1a

    instance-of v0, p1, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    if-eqz v0, :cond_1a

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;->getShakeLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->EjP:Landroid/view/View;

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;->getShakeLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1a
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->EjP:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_7
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/sP;

    invoke-direct {p1, p0, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/sP;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq:Landroid/view/View$OnTouchListener;

    goto/16 :goto_2

    :pswitch_8
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->vS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq:Landroid/view/View$OnTouchListener;

    goto/16 :goto_2

    :cond_1b
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->uA:I

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;I)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq:Landroid/view/View$OnTouchListener;

    goto/16 :goto_2

    :pswitch_9
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/TKC;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/TKC;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq:Landroid/view/View$OnTouchListener;

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->EjP:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_a
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->uA:I

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TEQ:Z

    invoke-direct {p1, p0, v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;IZ)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq:Landroid/view/View$OnTouchListener;

    goto/16 :goto_2

    :pswitch_b
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->EjP:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_c
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1c

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_1c
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq:Landroid/view/View$OnTouchListener;

    goto/16 :goto_2

    :pswitch_d
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EZ()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->gY()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->gY()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Sj(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1d
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/TKC;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/TKC;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq:Landroid/view/View$OnTouchListener;

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->EjP:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_e
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/sP;

    invoke-direct {p1, p0, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/sP;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq:Landroid/view/View$OnTouchListener;

    goto :goto_2

    :pswitch_f
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EZ()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->gY()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f

    :cond_1e
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1f
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq:Landroid/view/View$OnTouchListener;

    goto :goto_2

    :pswitch_10
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->uA:I

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;I)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq:Landroid/view/View$OnTouchListener;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_20
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq:Landroid/view/View$OnTouchListener;

    if-eqz p1, :cond_21

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_21
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq()Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->EjP:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->getDynamicClickListener()Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_22
    return-void

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_15
        0x31 -> :sswitch_14
        0x32 -> :sswitch_13
        0x35 -> :sswitch_12
        0x36 -> :sswitch_11
        0x37 -> :sswitch_10
        0x38 -> :sswitch_f
        0x39 -> :sswitch_e
        0x61f -> :sswitch_d
        0x620 -> :sswitch_c
        0x621 -> :sswitch_b
        0x622 -> :sswitch_a
        0x623 -> :sswitch_9
        0x625 -> :sswitch_8
        0x626 -> :sswitch_7
        0x627 -> :sswitch_6
        0x63e -> :sswitch_5
        0x640 -> :sswitch_4
        0x641 -> :sswitch_3
        0x642 -> :sswitch_2
        0x643 -> :sswitch_1
        0x647 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private Sj(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "24"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "23"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "25"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "22"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->uA()V

    return-void
.end method

.method private uA()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->getDynamicClickListener()Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->tz()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public EjP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;->sP()V

    :cond_0
    return-void
.end method

.method public HiB()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->EjP:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->vS:Ljava/lang/String;

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->EjP:Landroid/view/View;

    instance-of v1, v0, Lcom/bytedance/sdk/component/adexpress/vS/TKC;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/TKC;->TKC()V

    :cond_1
    return-void
.end method

.method public Sj()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->vS:Ljava/lang/String;

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Jcg:Lcom/bytedance/sdk/component/adexpress/vS/TzV;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->TKC()V

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA$2;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->vS:Ljava/lang/String;

    const-string v1, "20"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA$3;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->uA()V

    :cond_2
    return-void
.end method

.method public TKC()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;->Sj()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;->sP()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq:Landroid/view/View$OnTouchListener;

    instance-of v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/TKC;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public sP()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->getDynamicClickListener()Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->tz()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public vS()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->EjP:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->vS:Ljava/lang/String;

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->EjP:Landroid/view/View;

    instance-of v1, v0, Lcom/bytedance/sdk/component/adexpress/vS/TKC;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/TKC;->EjP()V

    :cond_1
    return-void
.end method

.class public Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;
.super Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

# interfaces
.implements Lu5/b$b;
.implements Lcom/bytedance/sdk/component/utils/LqL$Sj;
.implements Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$Sj;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;,
        Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$sP;
    }
.end annotation


# static fields
.field private static final dx:Ljava/lang/Integer;

.field private static final zR:Ljava/lang/Integer;


# instance fields
.field protected Dq:Landroid/widget/ImageView;

.field private Ei:Z

.field protected EjP:Z

.field private FPG:Landroid/view/View;

.field private final Fm:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected Fmk:I

.field public HiB:Z

.field private final HpB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private JcM:J

.field protected Jcg:Landroid/widget/RelativeLayout;

.field private final LD:Landroid/os/Handler;

.field private LqL:J

.field private final Mts:Ljava/lang/String;

.field private RiZ:Z

.field protected final Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field protected TEQ:Landroid/widget/ImageView;

.field protected TKC:Landroid/widget/FrameLayout;

.field private TzV:Z

.field private WMZ:Z

.field private Wjd:Lu5/b$c;

.field private final Yf:Z

.field protected Ym:Z

.field public Zq:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$sP;

.field protected aa:Ljava/lang/String;

.field private dNu:Landroid/view/ViewGroup;

.field private fF:Z

.field private ib:Ljava/lang/String;

.field private final jb:Ljava/lang/Runnable;

.field private kF:Z

.field private ley:Z

.field protected sP:Lu5/b;

.field private sU:Ljava/lang/String;

.field sef:Z

.field protected uA:Landroid/widget/ImageView;

.field private uP:Z

.field private final uvD:Landroid/content/Context;

.field public vS:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

.field private wE:Z

.field private xD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final xhi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dx:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->zR:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ZZLcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLjava/lang/String;ZZLcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "embeded_ad"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLjava/lang/String;ZZLcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLjava/lang/String;ZZLcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->EjP:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->RiZ:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->HiB:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->kF:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uP:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->wE:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Ym:Z

    const-string v2, "embeded_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->aa:Ljava/lang/String;

    const/16 v2, 0x32

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Fmk:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->ley:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Yf:Z

    new-instance v2, Lcom/bytedance/sdk/component/utils/LqL;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->sP()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/bytedance/sdk/component/utils/LqL;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/LqL$Sj;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->WMZ:Z

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Mts:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sef:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Fm:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$4;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->jb:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Ei:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->HpB:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xhi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :try_start_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->rB()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lx5/b;

    move-result-object v0

    invoke-interface {v0}, Lx5/b;->sP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->ib:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    if-eqz p7, :cond_1

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    :cond_1
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->aa:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->RiZ:Z

    const-string p1, "NativeVideoTsView"

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uP:Z

    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->wE:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->HiB()V

    return-void
.end method

.method private EjP()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(JI)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Wjd:Lu5/b$c;

    return-void
.end method

.method private HiB()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private JcM()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/view/View;)V

    return-void
.end method

.method private LD()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sP(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private LqL()V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->kF()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "key_video_is_update_flag"

    const-string v3, "sp_multi_native_video_data"

    if-eqz v0, :cond_0

    invoke-static {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->kF()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v0}, Lu5/b;->Dq()J

    move-result-wide v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v0}, Lu5/b;->vS()J

    move-result-wide v6

    add-long/2addr v6, v4

    const-string v0, "key_native_video_complete"

    invoke-static {v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "key_video_current_play_position"

    const-wide/16 v8, 0x0

    invoke-static {v3, v1, v8, v9}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    const-string v1, "key_video_total_play_duration"

    invoke-static {v3, v1, v6, v7}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    const-string v1, "key_video_duration"

    invoke-static {v3, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v1, v0}, Lu5/b;->sP(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v0, v8, v9}, Lu5/b;->Sj(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v0, v6, v7}, Lu5/b;->sP(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v0, v4, v5}, Lu5/b;->TKC(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private RiZ()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    invoke-interface {v0, v1}, Lu5/b;->TKC(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$Sj;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v0, p0}, Lu5/b;->Sj(Lu5/b$b;)V

    return-void
.end method

.method private Sj(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TKC:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->FPG:Landroid/view/View;

    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p1
.end method

.method private Sj(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->rB()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->ib:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZI)V

    return-void
.end method

.method private Sj(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uP()Z

    move-result v0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->wE()V

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v2}, Lu5/b;->Zq()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {p1}, Lu5/b;->Zq()Z

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->EjP()V

    return-void

    :cond_1
    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->kF:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {p1}, Lu5/b;->Zq()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {p1}, Lu5/b;->Ym()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {p1}, Lu5/b;->aa()Lt5/a;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {p1}, Lu5/b;->aa()Lt5/a;

    move-result-object p1

    invoke-interface {p1}, Lt5/a;->Jcg()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    if-nez p1, :cond_2

    if-ne p2, v1, :cond_9

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lu5/b;->sef()Z

    move-result p1

    const-string p2, "changeVideoStatus"

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZLjava/lang/String;)V

    :cond_3
    const-string p1, "ALP-AL00"

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Mts:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {p1}, Lu5/b;->sP()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/uA;->dNu()Z

    move-result p1

    if-nez p1, :cond_5

    move v0, v1

    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Jcg(Z)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Wjd:Lu5/b$c;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lu5/b$c;->h_()V

    return-void

    :cond_6
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {p1}, Lu5/b;->aa()Lt5/a;

    move-result-object p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Fm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Fm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->HpB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sU()V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {p1}, Lu5/b;->aa()Lt5/a;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {p1}, Lu5/b;->aa()Lt5/a;

    move-result-object p1

    invoke-interface {p1}, Lt5/a;->vS()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {p1}, Lu5/b;->Sj()V

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Wjd:Lu5/b$c;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lu5/b$c;->g_()V

    :cond_9
    :goto_1
    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF:Z

    return p0
.end method

.method private TzV()V
    .locals 10

    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TKC:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->aa:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF()Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    iget-boolean v6, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uP:Z

    iget-boolean v7, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->wE:Z

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ZZZLcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    iput-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->RiZ()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private Yf()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sP(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private dNu()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->JcM:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->JcM:J

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private dx()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Zq:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$sP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->JcM()V

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TEQ()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->zR()V

    return-void
.end method

.method private fF()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->RiZ:Z

    return v0
.end method

.method private ib()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Ym()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->jb:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method

.method private kF()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ms()Z

    move-result v0

    return v0
.end method

.method private ley()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->TKC()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->jb:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private sP(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 7

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-direct {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Dq:Landroid/widget/ImageView;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-direct {v4, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "tt_new_play_video"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/utils/ib;->TKC(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TEQ:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private sU()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV()V

    goto :goto_0

    :cond_0
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->TzV()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Fm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Fm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Dq()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lx5/b;

    move-result-object v0

    invoke-interface {v0}, Lx5/b;->TKC()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(I)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(I)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Z)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v2, v0}, Lu5/b;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v0, v1}, Lu5/b;->sP(Z)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v0}, Lu5/b;->Zq()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v0}, Lu5/b;->Zq()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Z)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    :cond_6
    return-void
.end method

.method private uP()Z
    .locals 4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->kF()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "key_video_isfromvideodetailpage"

    const-string v2, "sp_multi_native_video_data"

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "key_video_is_from_detail_page"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method static synthetic uvD()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dx:Ljava/lang/Integer;

    return-object v0
.end method

.method private wE()V
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->kF()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "sp_multi_native_video_data"

    const-string v2, "key_video_isfromvideodetailpage"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "key_video_is_from_detail_page"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private zR()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Fm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Fm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lu5/b;->Sj(ZI)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->HpB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public Dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    return v0
.end method

.method public Fmk()V
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->getNativeVideoController()Lu5/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->getNativeVideoController()Lu5/b;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->getNativeVideoController()Lu5/b;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->zR()Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Lu5/c;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public Jcg()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->FPG:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->FPG:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->FPG:Landroid/view/View;

    invoke-direct {p0, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_1
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Ym:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TEQ:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    invoke-virtual {v0}, Ly5/b;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    invoke-virtual {v0}, Ly5/b;->r()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    invoke-virtual {v0}, Ly5/b;->t()I

    move-result v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    invoke-virtual {v0}, Ly5/b;->C()I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Dq:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TEQ:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TEQ:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public Sj(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;",
            ">;>;)",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/vS;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Landroid/view/View;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public Sj()V
    .locals 0

    return-void
.end method

.method public Sj(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP()V

    return-void
.end method

.method public Sj(JI)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Wjd:Lu5/b$c;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lu5/b$c;->i_()V

    :cond_0
    return-void
.end method

.method public Sj(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Wjd:Lu5/b$c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lu5/b$c;->Sj(JJ)V

    :cond_0
    return-void
.end method

.method public Sj(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->ib()V

    :cond_0
    return-void
.end method

.method protected Sj(Z)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/uA;->TzV()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/uA;->TzV()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_new_play_video"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/ib;->EjP(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Fmk:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public Sj(ZLjava/lang/String;)V
    .locals 1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->EjP:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lu5/b;->Sj(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(JZZ)Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LqL:J

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v0, v1}, Lu5/b;->Sj(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lx5/b;

    move-result-object v0

    invoke-interface {v0}, Lx5/b;->TKC()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Z)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {p1, v0}, Lu5/b;->sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    return v2

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v1, v0}, Lu5/b;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    move-result v1

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-lez p1, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    if-lez p1, :cond_4

    if-eqz p3, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz p1, :cond_4

    new-instance p1, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {p2}, Lu5/b;->HiB()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(J)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {p2}, Lu5/b;->Dq()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {p2}, Lu5/b;->vS()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(J)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {p2}, Lu5/b;->Fmk()Lu5/c;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->sP(Lz5/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method public TEQ()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->Fmk()Lu5/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/c;->Sj()V

    invoke-interface {v0}, Lu5/c;->TKC()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected TKC()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->aa()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sef()V

    :cond_0
    return-void
.end method

.method Ym()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->aa:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->sP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const/16 v1, 0x32

    invoke-static {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/LD;->Sj(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public Zq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Zq()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LqL:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->HiB(J)V

    :cond_0
    return-void
.end method

.method public aa()Z
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TzV;->TKC(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v0}, Lu5/b;->aa()Lt5/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v0}, Lu5/b;->aa()Lt5/a;

    move-result-object v0

    invoke-interface {v0}, Lt5/a;->vS()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dx:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZI)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return v1
.end method

.method public getCurrentPlayTime()D
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->HiB()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNativeVideoController()Lu5/b;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sU()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xhi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dx()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xhi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_1
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishTemporaryDetach()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sU()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->RiZ:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Zq:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$sP;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->Zq()Z

    move-result v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v0}, Lu5/b;->Dq()J

    move-result-wide v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v0}, Lu5/b;->uA()J

    move-result-wide v5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v0}, Lu5/b;->HiB()J

    move-result-wide v7

    iget-boolean v9, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    invoke-interface/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$sP;->Sj(ZJJJZ)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onStartTemporaryDetach()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dx()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const-string v0, "open_ad"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->kF:Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LqL()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uP()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->Zq()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->wE()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->EjP()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Dq()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lu5/b;->Ym()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lu5/b;->Zq()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->ley()V

    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dx:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZI)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Dq()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lu5/b;->aa()Lt5/a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v0}, Lu5/b;->aa()Lt5/a;

    move-result-object v0

    invoke-interface {v0}, Lt5/a;->vS()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->ley()V

    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dx:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZI)V

    return-void

    :cond_4
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->ley()V

    :cond_7
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LqL()V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Ei:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Ei:Z

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uP()Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lu5/b;->Zq()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->wE()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->EjP()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Dq()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lu5/b;->Ym()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez v0, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->ley:Z

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lx5/b;

    move-result-object v0

    invoke-interface {v0}, Lx5/b;->TKC()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(I)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(I)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LqL:J

    invoke-virtual {v0, v4, v5}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Z)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v4, v0}, Lu5/b;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->ley:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    :cond_4
    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lu5/b;->Zq()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected sP()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sP(I)I

    move-result v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/TzV;->TKC(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_9

    const/4 v5, 0x2

    if-eq v1, v5, :cond_6

    const/4 v5, 0x3

    if-eq v1, v5, :cond_5

    const/4 v5, 0x4

    if-eq v1, v5, :cond_4

    const/4 v5, 0x5

    if-eq v1, v5, :cond_1

    goto :goto_4

    :cond_1
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    goto :goto_4

    :cond_4
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sef:Z

    goto :goto_4

    :cond_5
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    goto :goto_4

    :cond_6
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->HiB(I)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v3

    goto :goto_3

    :cond_8
    :goto_2
    move v1, v4

    :goto_3
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    goto :goto_4

    :cond_9
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    :goto_4
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->RiZ:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->HiB:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->aa:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->sP(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TKC(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->EjP:Z

    goto :goto_5

    :cond_b
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->EjP:Z

    :cond_c
    :goto_5
    const-string v0, "open_ad"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->EjP:Z

    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_e

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    invoke-interface {v0, v1}, Lu5/b;->TKC(Z)V

    :cond_e
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->HiB:Z

    return-void
.end method

.method public sP(JI)V
    .locals 0

    return-void
.end method

.method public sP(Z)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lu5/b;->sP(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {p1}, Lu5/b;->Fmk()Lu5/c;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lu5/c;->sP()V

    invoke-interface {p1}, Lu5/c;->TKC()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD:Landroid/content/Context;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0, v2, v1}, Lu5/c;->Sj(Ljava/lang/Object;Ljava/lang/ref/WeakReference;Z)V

    :cond_1
    return-void
.end method

.method public sef()V
    .locals 6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TzV;->TKC(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Ym()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v0}, Lu5/b;->aa()Lt5/a;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v0}, Lu5/b;->aa()Lt5/a;

    move-result-object v0

    invoke-interface {v0}, Lt5/a;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->zR:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZI)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Dq()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->HpB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->HpB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->JcM()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->JcM()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lx5/b;

    move-result-object v0

    invoke-interface {v0}, Lx5/b;->TKC()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(I)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(I)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LqL:J

    invoke-virtual {v0, v4, v5}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Z)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    move-result v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lx5/b;

    move-result-object v4

    invoke-interface {v4}, Lx5/b;->TKC()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    invoke-interface {v4, v0}, Lu5/b;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Z)V

    :cond_6
    return-void
.end method

.method public setAdCreativeClickListener(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;)V

    :cond_0
    return-void
.end method

.method public setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Zq:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$sP;

    return-void
.end method

.method public setIsAutoPlay(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->WMZ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sP(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TzV;->HiB(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Yf()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TzV;->vS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Yf()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TzV;->EjP(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lu5/b;->TKC(Z)V

    :cond_4
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_6

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object p1

    invoke-virtual {p1}, Ly5/b;->r()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object p1

    invoke-virtual {p1}, Ly5/b;->t()I

    move-result v2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object p1

    invoke-virtual {p1}, Ly5/b;->C()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Dq:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    :cond_6
    :goto_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->WMZ:Z

    return-void
.end method

.method public setNeedNativeVideoPlayBtnVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Ym:Z

    return-void
.end method

.method public setVideoAdClickListenerTTNativeAd(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    :cond_0
    return-void
.end method

.method public setVideoAdInteractionListener(Lu5/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Wjd:Lu5/b$c;

    return-void
.end method

.method public setVideoAdLoadListener(Lu5/b$a;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lu5/b;->Sj(Lu5/b$a;)V

    :cond_0
    return-void
.end method

.method public setVideoCacheUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sU:Ljava/lang/String;

    return-void
.end method

.method public setVideoPlayCallback(Lcom/bytedance/sdk/openadsdk/core/aa/sP/sP;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/sP;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->zR()V

    :cond_1
    return-void
.end method

.method public uA()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->EjP:Z

    return v0
.end method

.method public vS()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Wjd:Lu5/b$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b$c;->d_()V

    :cond_0
    return-void
.end method

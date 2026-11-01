.class public Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/uA;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;,
        Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;
    }
.end annotation


# instance fields
.field private Dq:I

.field private EjP:Ljava/lang/String;

.field private volatile Fmk:Z

.field private HiB:Lcom/bytedance/sdk/component/HiB/uvD;

.field private Jcg:Landroid/graphics/Bitmap$Config;

.field private LqL:Lcom/bytedance/sdk/component/HiB/sef;

.field private RiZ:Z

.field Sj:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private TEQ:Lcom/bytedance/sdk/component/HiB/Dq;

.field private TKC:Ljava/lang/String;

.field private final TzV:Landroid/os/Handler;

.field private Yf:[B

.field private Ym:I

.field private Zq:Z

.field private aa:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private dNu:I

.field private dx:I

.field private ib:Lcom/bytedance/sdk/component/HiB/sP;

.field private kF:I

.field private ley:Z

.field private sP:Ljava/lang/String;

.field private sU:Lcom/bytedance/sdk/component/HiB/Jcg;

.field private sef:Z

.field private uA:I

.field private uP:I

.field private uvD:Lcom/bytedance/sdk/component/HiB/RiZ;

.field private vS:Landroid/widget/ImageView$ScaleType;

.field private wE:Ljava/util/concurrent/ExecutorService;

.field private zR:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TzV:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->RiZ:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Yf:[B

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->sP:Ljava/lang/String;

    new-instance v0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->sP(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/uvD;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;-><init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;Lcom/bytedance/sdk/component/HiB/uvD;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->HiB:Lcom/bytedance/sdk/component/HiB/uvD;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->TKC(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->aa:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->EjP(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->vS:Landroid/widget/ImageView$ScaleType;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->HiB(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Jcg:Landroid/graphics/Bitmap$Config;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->vS(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Dq:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->Jcg(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uA:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->Dq(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Ym:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->uA(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->dNu:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->TEQ(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/RiZ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uvD:Lcom/bytedance/sdk/component/HiB/RiZ;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->ib:Lcom/bytedance/sdk/component/HiB/sP;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->Ym(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->Ym(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->sP(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->Ym(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->aa(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->sef:Z

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->Fmk(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Zq:Z

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->sef(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->zR:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->Zq(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/Dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TEQ:Lcom/bytedance/sdk/component/HiB/Dq;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->uvD(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uP:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->dNu(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->kF:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->TzV(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->wE:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->RiZ(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->ley:Z

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->sU(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/sef;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->LqL:Lcom/bytedance/sdk/component/HiB/sef;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;-><init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)V

    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->dNu:I

    return p0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->aa:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Ym:I

    return p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/Dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TEQ:Lcom/bytedance/sdk/component/HiB/Dq;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/RiZ;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uvD:Lcom/bytedance/sdk/component/HiB/RiZ;

    return-object p0
.end method

.method private Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/sP;
    .locals 1

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->dx(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->dx(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->zR(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->zR(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->Sj(Ljava/io/File;)Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->TEQ()Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object p1

    return-object p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/uA;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->dx()Lcom/bytedance/sdk/component/HiB/uA;

    move-result-object p0

    return-object p0
.end method

.method private dx()Lcom/bytedance/sdk/component/HiB/uA;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->zR:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->HiB:Lcom/bytedance/sdk/component/HiB/uvD;

    if-eqz v0, :cond_0

    const-string v2, "not init !"

    const/16 v3, 0x3ed

    invoke-interface {v0, v3, v2, v1}, Lcom/bytedance/sdk/component/HiB/uvD;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->HiB:Lcom/bytedance/sdk/component/HiB/uvD;

    const-string v2, "url is empty"

    const/16 v3, 0x7d0

    invoke-interface {v0, v3, v2, v1}, Lcom/bytedance/sdk/component/HiB/uvD;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->zR:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;->HiB()Lcom/bytedance/sdk/component/HiB/dx;

    move-result-object v2

    const-string v3, "http://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "https://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    const-string v3, "url is not validate "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3ee

    invoke-interface {v2, v3, v0}, Lcom/bytedance/sdk/component/HiB/dx;->Sj(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->wE:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->zR:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;->EjP()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    :cond_4
    new-instance v0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$1;-><init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)V

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->ley:Z

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->wE:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_6

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj:Ljava/util/concurrent/Future;

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v1, "ImageRequest"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Fmk:Z

    return p0
.end method

.method static synthetic uA(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TKC:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TzV:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public Dq()Lcom/bytedance/sdk/component/HiB/uvD;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->HiB:Lcom/bytedance/sdk/component/HiB/uvD;

    return-object v0
.end method

.method public EjP()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->vS:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public Fmk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->RiZ:Z

    return v0
.end method

.method public HiB()Landroid/graphics/Bitmap$Config;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Jcg:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public Jcg()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uP:I

    return v0
.end method

.method public RiZ()Lcom/bytedance/sdk/component/HiB/sef;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->LqL:Lcom/bytedance/sdk/component/HiB/sef;

    return-object v0
.end method

.method public Sj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->sP:Ljava/lang/String;

    return-object v0
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->dx:I

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->EjP:Ljava/lang/String;

    return-void
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->RiZ:Z

    return-void
.end method

.method public Sj([B)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Yf:[B

    return-void
.end method

.method public TEQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TKC:Ljava/lang/String;

    return-object v0
.end method

.method public TKC()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uA:I

    return v0
.end method

.method public TzV()Lcom/bytedance/sdk/component/HiB/sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->ib:Lcom/bytedance/sdk/component/HiB/sP;

    return-object v0
.end method

.method public Ym()Landroid/graphics/Bitmap$Config;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Jcg:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public Zq()Lcom/bytedance/sdk/component/HiB/Jcg;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->sU:Lcom/bytedance/sdk/component/HiB/Jcg;

    return-object v0
.end method

.method public aa()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Ym:I

    return v0
.end method

.method public dNu()Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->zR:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    return-object v0
.end method

.method public sP()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Dq:I

    return v0
.end method

.method public sP(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->aa:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->aa:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x413c0901

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TKC:Ljava/lang/String;

    return-void
.end method

.method public sU()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TEQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->aa()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sef()[B
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Yf:[B

    return-object v0
.end method

.method public uA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->EjP:Ljava/lang/String;

    return-object v0
.end method

.method public uvD()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->dx:I

    return v0
.end method

.method public vS()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->kF:I

    return v0
.end method

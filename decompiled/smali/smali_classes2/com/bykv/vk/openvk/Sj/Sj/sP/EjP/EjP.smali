.class public Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;
.super Ljava/lang/Object;

# interfaces
.implements Lt5/a;
.implements Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$a;
.implements Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$b;
.implements Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$c;
.implements Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$d;
.implements Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$e;
.implements Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$f;
.implements Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$g;
.implements Lcom/bytedance/sdk/component/utils/LqL$Sj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;
    }
.end annotation


# static fields
.field private static jb:Z

.field private static final kF:Landroid/util/SparseIntArray;


# instance fields
.field private Dq:Z

.field private EjP:I

.field private volatile FPG:Z

.field private Fm:Z

.field private Fmk:Lcom/bytedance/sdk/component/utils/LqL;

.field private HiB:Z

.field private JcM:Landroid/view/Surface;

.field private final Jcg:Z

.field private volatile LD:I

.field private LqL:Z

.field private final Mts:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;

.field private RiZ:J

.field private Sj:Landroid/graphics/SurfaceTexture;

.field private TEQ:Z

.field private TKC:I

.field private TzV:J

.field private final WMZ:Ljava/lang/Runnable;

.field private Wjd:J

.field private Yf:Ljava/util/concurrent/CountDownLatch;

.field private volatile Ym:I

.field private Zq:J

.field private aa:J

.field private dNu:J

.field private dx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private fF:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ib:Ljava/lang/String;

.field private ley:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

.field private sP:Landroid/view/SurfaceHolder;

.field private sU:Z

.field private sef:Z

.field private uA:Z

.field private uP:Z

.field private uvD:J

.field private volatile vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

.field private final wE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lt5/a$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private xD:J

.field private zR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->kF:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->jb:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TKC:I

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->HiB:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Jcg:Z

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq:Z

    const/16 v2, 0xc9

    iput v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->aa:J

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sef:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Zq:J

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uvD:J

    iput-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dNu:J

    iput-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TzV:J

    iput-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->RiZ:J

    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->zR:I

    const-string v4, "0"

    iput-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->ib:Ljava/lang/String;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->ley:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LqL:Z

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Yf:Ljava/util/concurrent/CountDownLatch;

    const/16 v4, 0xc8

    iput v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LD:I

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->fF:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->JcM:Landroid/view/Surface;

    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->WMZ:Ljava/lang/Runnable;

    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Mts:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;

    iput-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Wjd:J

    iput-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->xD:J

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fm:Z

    const-string v0, "SSMediaPlayerWrapper"

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Dq(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    return-object p0
.end method

.method static synthetic EjP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dNu:J

    return-wide v0
.end method

.method static synthetic EjP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->aa:J

    return-wide p1
.end method

.method static synthetic EjP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LqL:Z

    return p1
.end method

.method static synthetic HiB(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)I
    .locals 0

    iget p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LD:I

    return p0
.end method

.method static synthetic Jcg(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)I
    .locals 0

    iget p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TKC:I

    return p0
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;I)I
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    return p1
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dNu:J

    return-wide p1
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;)Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Lcom/bytedance/sdk/component/utils/LqL;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->ib:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->l(II)V

    return-void
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->c(JJ)V

    return-void
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sef:Z

    return p1
.end method

.method static synthetic TEQ(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->aa:J

    return-wide v0
.end method

.method static synthetic TKC(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uvD:J

    return-wide p1
.end method

.method public static TKC(Z)V
    .locals 0

    sput-boolean p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->jb:Z

    return-void
.end method

.method static synthetic TKC(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sef:Z

    return p0
.end method

.method static synthetic TKC(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->FPG:Z

    return p1
.end method

.method static synthetic Ym(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->h()V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dx:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method private b()V
    .locals 2

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uA:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uA:Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dx:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uA:Z

    return-void
.end method

.method private c(JJ)V
    .locals 8

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lt5/a$a;

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Lt5/a$a;->Sj(Lt5/a;JJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dx:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dx:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dx:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->zR:I

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/Dq/Sj/Sj;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "csj_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/utils/LqL$Sj;Ljava/lang/String;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fm:Z

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->h()V

    return-void
.end method

.method private f(II)Z
    .locals 2

    const/16 v0, -0x3f2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ef

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ec

    if-eq p1, v0, :cond_0

    const/16 v0, -0x6e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eq p2, v1, :cond_1

    const/16 v0, 0x2bc

    if-eq p2, v0, :cond_1

    const/16 v0, 0x320

    if-eq p2, v0, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dx:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->aa()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->e(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$f;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->i(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$c;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->b(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$d;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->c(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$a;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->f(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$e;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->j(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$b;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->a(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$g;)V

    :try_start_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Ym()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$6;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$6;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$7;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$7;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private l(II)V
    .locals 7

    const/16 p2, 0x2bd

    const v0, 0x7fffffff

    if-ne p1, p2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Wjd:J

    iget p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TKC:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TKC:I

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lt5/a$a;

    const/4 v1, 0x0

    invoke-interface {p2, p0, v0, v1, v1}, Lt5/a$a;->Sj(Lt5/a;III)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/16 p2, 0x2be

    if-ne p1, p2, :cond_6

    iget-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Wjd:J

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_3

    iget-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->xD:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Wjd:J

    sub-long/2addr v3, v5

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->xD:J

    iput-wide v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Wjd:J

    :cond_3
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lt5/a$a;

    invoke-interface {p2, p0, v0}, Lt5/a$a;->Sj(Lt5/a;I)V

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    iget-boolean p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fm:Z

    if-eqz p2, :cond_7

    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->g()V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->s()V

    iget-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LqL:Z

    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP(Z)V

    :cond_7
    return-void
.end method

.method private m(J)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Mts:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;->Sj(J)V

    iget-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uP:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Mts:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->n(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->ley:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->p(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Mts:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->n(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Mts:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private n(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TEQ:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->d(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private o(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->g(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method private p(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private q()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Zq:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TKC:I

    iput-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dNu:J

    iput-boolean v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sef:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uvD:J

    return-void
.end method

.method private r()V
    .locals 3

    sget-object v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->kF:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->zR:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->zR:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private s()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->RiZ:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt5/a$a;

    invoke-interface {v3, p0, v0, v1}, Lt5/a$a;->Sj(Lt5/a;J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->HiB:Z

    return-void
.end method

.method static synthetic sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uvD:J

    return-wide v0
.end method

.method static synthetic sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Zq:J

    return-wide p1
.end method

.method static synthetic sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq:Z

    return p1
.end method

.method private t()V
    .locals 1

    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$14;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$14;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic uA(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    return-object p0
.end method

.method static synthetic vS(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Zq:J

    return-wide v0
.end method


# virtual methods
.method public Dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TEQ:Z

    return v0
.end method

.method public EjP()I
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Fmk()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Fmk()Z
    .locals 2

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const/16 v1, 0xcd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public HiB()I
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->sef()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Jcg()Z
    .locals 2

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->FPG:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_1

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public RiZ()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public Sj(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LD:I

    return-void
.end method

.method public Sj(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const/16 v1, 0xce

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$2;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;J)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->n(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public Sj(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Z)V

    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$3;

    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$3;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Sj(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    iget v3, v1, Landroid/os/Message;->what:I

    iget-object v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    if-eqz v4, :cond_12

    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v7, 0xcd

    const/16 v8, 0xca

    const/16 v9, 0xcb

    const/16 v10, 0xc9

    const-wide/16 v11, 0x1

    const/16 v13, 0xd0

    const/16 v14, 0xd1

    const/16 v15, 0xce

    const/4 v5, 0x1

    const/16 v6, 0xcf

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    :pswitch_1
    :try_start_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->JcM:Landroid/view/Surface;

    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    iget-object v2, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->JcM:Landroid/view/Surface;

    invoke-interface {v1, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->h(Landroid/view/Surface;)V

    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v1, v5}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->sP(Z)V

    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Yf:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v11, v12, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->g()V

    goto/16 :goto_5

    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceHolder;

    iget-object v2, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v2, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Sj(Landroid/view/SurfaceHolder;)V

    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v1, v5}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->sP(Z)V

    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Yf:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v11, v12, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_5

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->q()V

    iget v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v4, v10, :cond_0

    iget v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-ne v4, v9, :cond_d

    :cond_0
    :try_start_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lt5/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {}, Lt5/b;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Sj(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->jb:Z

    if-nez v2, :cond_4

    iget v2, v1, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP:I

    :cond_4
    iget-object v2, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v2, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    :goto_0
    iput v8, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_5

    :pswitch_4
    iget v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v4, v15, :cond_5

    iget v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v4, v6, :cond_5

    iget v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-ne v4, v14, :cond_d

    :cond_5
    :try_start_2
    iget-object v2, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->EjP:I

    invoke-interface {v2, v3, v4, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Sj(JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_5

    :pswitch_5
    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v1, v7, :cond_6

    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v1, v15, :cond_6

    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v1, v13, :cond_6

    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v1, v6, :cond_6

    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-ne v1, v14, :cond_d

    :cond_6
    :try_start_3
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->vS()V

    iput v13, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_5

    :pswitch_6
    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v1, v8, :cond_7

    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-ne v1, v13, :cond_d

    :cond_7
    :try_start_4
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Dq()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_5

    :pswitch_7
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->i()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt5/a$a;

    invoke-interface {v2, v0}, Lt5/a$a;->TKC(Lt5/a;)V

    goto :goto_1

    :cond_9
    iput v9, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    goto/16 :goto_5

    :pswitch_8
    :try_start_6
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->aa()V

    iput v10, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_5

    :pswitch_9
    iget-boolean v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sef:Z

    if-eqz v1, :cond_a

    iget-wide v7, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Zq:J

    iget-wide v9, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dNu:J

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Zq:J

    :cond_a
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sef:Z

    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dNu:J

    const-wide/high16 v7, -0x8000000000000000L

    iput-wide v7, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uvD:J

    iget v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v4, v15, :cond_b

    iget v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v4, v6, :cond_b

    iget v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-ne v4, v14, :cond_d

    :cond_b
    :try_start_7
    iget-object v2, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Jcg()V

    iput v6, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    iput-boolean v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->FPG:Z

    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt5/a$a;

    invoke-interface {v2, v0}, Lt5/a$a;->EjP(Lt5/a;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :pswitch_a
    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v1, v7, :cond_10

    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v1, v6, :cond_10

    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-ne v1, v14, :cond_d

    goto :goto_4

    :cond_d
    const/16 v1, 0xc8

    iput v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    iget-boolean v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq:Z

    if-nez v1, :cond_12

    new-instance v1, Ly5/a;

    const/16 v4, 0x134

    invoke-direct {v1, v4, v3}, Ly5/a;-><init>(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ly5/a;->b(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt5/a$a;

    invoke-interface {v3, v0, v1}, Lt5/a$a;->Sj(Lt5/a;Ly5/a;)V

    goto :goto_3

    :cond_f
    iput-boolean v5, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq:Z

    goto :goto_5

    :cond_10
    :goto_4
    :try_start_8
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->HiB()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->RiZ:J

    iput v15, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    iget-wide v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->aa:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_11

    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    iget-wide v2, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->aa:J

    iget v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->EjP:I

    invoke-interface {v1, v2, v3, v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Sj(JI)V

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->aa:J

    :cond_11
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->ley:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    if-eqz v1, :cond_12

    iget-boolean v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LqL:Z

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    :cond_12
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public Sj(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP:Landroid/view/SurfaceHolder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Z)V

    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$4;

    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$4;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Landroid/view/SurfaceHolder;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->ley:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fm:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fm:Z

    :cond_2
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$5;

    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$5;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;)V
    .locals 2

    const/16 p1, 0xd1

    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    sget-object p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->kF:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->zR:I

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->WMZ:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt5/a$a;

    invoke-interface {v0, p0}, Lt5/a$a;->Sj(Lt5/a;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;I)V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt5/a$a;

    invoke-interface {v0, p0, p2}, Lt5/a$a;->sP(Lt5/a;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;IIII)V
    .locals 0

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/ref/WeakReference;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_0

    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lt5/a$a;

    invoke-interface {p4, p0, p2, p3}, Lt5/a$a;->Sj(Lt5/a;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Sj(Lt5/a$a;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Sj(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uP:Z

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Sj(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$9;

    invoke-direct {v1, p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$9;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public Sj(ZJZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->h()V

    iput-boolean p4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LqL:Z

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->fF:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->FPG:Z

    invoke-virtual {p0, p4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP(Z)V

    if-eqz p1, :cond_1

    iput-wide p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->aa:J

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->t()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->m(J)V

    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->WMZ:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->WMZ:Ljava/lang/Runnable;

    iget p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LD:I

    int-to-long p3, p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Yf:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public Sj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->HiB:Z

    return v0
.end method

.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;II)Z
    .locals 2

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->r()V

    const/16 p1, 0xc8

    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->WMZ:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->f(II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->j()V

    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->fF:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    return v0

    :cond_2
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->fF:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance p1, Ly5/a;

    invoke-direct {p1, p2, p3}, Ly5/a;-><init>(II)V

    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lt5/a$a;

    invoke-interface {p3, p0, p1}, Lt5/a$a;->Sj(Lt5/a;Ly5/a;)V

    goto :goto_0

    :cond_4
    return v0
.end method

.method public TEQ()V
    .locals 2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->fF:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$11;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$11;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public TKC(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;)V
    .locals 2

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt5/a$a;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lt5/a$a;->Sj(Lt5/a;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public TKC()Z
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public TzV()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public Ym()V
    .locals 2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_6

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->FPG:Z

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fm:Z

    const/16 v1, 0x65

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sU:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->ley:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->p(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$12;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$12;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->d(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->HiB:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->ley:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->p(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$13;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$13;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->d(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public Zq()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TKC:I

    return v0
.end method

.method public aa()V
    .locals 2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TEQ:Z

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->a()V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->j()V

    return-void

    :catchall_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->j()V

    :cond_2
    return-void
.end method

.method public dNu()J
    .locals 4

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const/16 v3, 0xce

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const/16 v3, 0xcf

    if-ne v0, v3, :cond_2

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->uA()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    :cond_2
    return-wide v1
.end method

.method public sP(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->EjP:I

    return-void
.end method

.method public sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;)V
    .locals 2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0xcd

    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->ley:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->aa()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    new-instance v0, Lt5/c;

    invoke-direct {v0}, Lt5/c;-><init>()V

    invoke-virtual {v0, p1}, Lt5/c;->b(F)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->d(Lt5/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->FPG:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->k()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v0, 0x64

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_0
    sget-object p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->kF:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->zR:I

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    iget-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fm:Z

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sU:Z

    if-nez p1, :cond_4

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->s()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sU:Z

    :cond_4
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt5/a$a;

    invoke-interface {v0, p0}, Lt5/a$a;->sP(Lt5/a;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public sP(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$8;

    invoke-direct {v1, p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$8;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sP()Z
    .locals 2

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;II)Z
    .locals 4

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/16 p1, -0x3ec

    if-ne p3, p1, :cond_2

    new-instance p1, Ly5/a;

    invoke-direct {p1, p2, p3}, Ly5/a;-><init>(II)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt5/a$a;

    invoke-interface {v2, p0, p1}, Lt5/a$a;->Sj(Lt5/a;Ly5/a;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->l(II)V

    return v1
.end method

.method public sef()J
    .locals 4

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sef:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dNu:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Zq:J

    add-long/2addr v2, v0

    return-wide v2

    :cond_0
    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Zq:J

    return-wide v0
.end method

.method public uA()V
    .locals 4

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->fF:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const/16 v2, 0xce

    if-eq v0, v2, :cond_2

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->FPG:Z

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Mts:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;->Sj(Z)V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->m(J)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->WMZ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->WMZ:Ljava/lang/Runnable;

    iget v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LD:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Yf:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public uvD()J
    .locals 4

    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TzV:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const/16 v1, 0xce

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const/16 v1, 0xcf

    if-ne v0, v1, :cond_2

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->TEQ()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TzV:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TzV:J

    return-wide v0
.end method

.method public vS()Z
    .locals 2

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const/16 v1, 0xce

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_1

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->FPG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

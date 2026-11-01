.class public Lcom/bytedance/adsdk/sP/TKC/TKC;
.super Ljava/lang/Object;


# instance fields
.field private final EjP:F

.field private HiB:Landroid/graphics/Typeface;

.field private final Sj:Ljava/lang/String;

.field private final TKC:Ljava/lang/String;

.field private final sP:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC;->Sj:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC;->sP:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC;->TKC:Ljava/lang/String;

    iput p4, p0, Lcom/bytedance/adsdk/sP/TKC/TKC;->EjP:F

    return-void
.end method


# virtual methods
.method public EjP()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC;->HiB:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public Sj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public Sj(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC;->HiB:Landroid/graphics/Typeface;

    return-void
.end method

.method public TKC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC;->TKC:Ljava/lang/String;

    return-object v0
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC;->sP:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/bytedance/adsdk/sP/HiB/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/HiB/Ei;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/adsdk/sP/HiB/Ei<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final Sj:Lcom/bytedance/adsdk/sP/HiB/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/adsdk/sP/HiB/aa;

    invoke-direct {v0}, Lcom/bytedance/adsdk/sP/HiB/aa;-><init>()V

    sput-object v0, Lcom/bytedance/adsdk/sP/HiB/aa;->Sj:Lcom/bytedance/adsdk/sP/HiB/aa;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/util/JsonReader;F)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/bytedance/adsdk/sP/HiB/RiZ;->sP(Landroid/util/JsonReader;)F

    move-result p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public synthetic sP(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/sP/HiB/aa;->Sj(Landroid/util/JsonReader;F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

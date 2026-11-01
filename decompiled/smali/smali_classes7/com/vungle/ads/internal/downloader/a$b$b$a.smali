.class public final Lcom/vungle/ads/internal/downloader/a$b$b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/a$b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/vungle/ads/internal/downloader/a$b$b$a;

.field private static CANCELLED:I

.field private static DONE:I

.field private static ERROR:I

.field private static IN_PROGRESS:I

.field private static LOST_CONNECTION:I

.field private static PAUSED:I

.field private static STARTED:I

.field private static STATE_CHANGED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/downloader/a$b$b$a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->$$INSTANCE:Lcom/vungle/ads/internal/downloader/a$b$b$a;

    const/4 v0, 0x1

    sput v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->IN_PROGRESS:I

    const/4 v0, 0x2

    sput v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->PAUSED:I

    const/4 v0, 0x3

    sput v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->CANCELLED:I

    const/4 v0, 0x4

    sput v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->DONE:I

    const/4 v0, 0x5

    sput v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->LOST_CONNECTION:I

    const/4 v0, 0x6

    sput v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->STATE_CHANGED:I

    const/4 v0, 0x7

    sput v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->ERROR:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCANCELLED()I
    .locals 1

    sget v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->CANCELLED:I

    return v0
.end method

.method public final getDONE()I
    .locals 1

    sget v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->DONE:I

    return v0
.end method

.method public final getERROR()I
    .locals 1

    sget v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->ERROR:I

    return v0
.end method

.method public final getIN_PROGRESS()I
    .locals 1

    sget v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->IN_PROGRESS:I

    return v0
.end method

.method public final getLOST_CONNECTION()I
    .locals 1

    sget v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->LOST_CONNECTION:I

    return v0
.end method

.method public final getPAUSED()I
    .locals 1

    sget v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->PAUSED:I

    return v0
.end method

.method public final getSTARTED()I
    .locals 1

    sget v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->STARTED:I

    return v0
.end method

.method public final getSTATE_CHANGED()I
    .locals 1

    sget v0, Lcom/vungle/ads/internal/downloader/a$b$b$a;->STATE_CHANGED:I

    return v0
.end method

.method public final setCANCELLED(I)V
    .locals 0

    sput p1, Lcom/vungle/ads/internal/downloader/a$b$b$a;->CANCELLED:I

    return-void
.end method

.method public final setDONE(I)V
    .locals 0

    sput p1, Lcom/vungle/ads/internal/downloader/a$b$b$a;->DONE:I

    return-void
.end method

.method public final setERROR(I)V
    .locals 0

    sput p1, Lcom/vungle/ads/internal/downloader/a$b$b$a;->ERROR:I

    return-void
.end method

.method public final setIN_PROGRESS(I)V
    .locals 0

    sput p1, Lcom/vungle/ads/internal/downloader/a$b$b$a;->IN_PROGRESS:I

    return-void
.end method

.method public final setLOST_CONNECTION(I)V
    .locals 0

    sput p1, Lcom/vungle/ads/internal/downloader/a$b$b$a;->LOST_CONNECTION:I

    return-void
.end method

.method public final setPAUSED(I)V
    .locals 0

    sput p1, Lcom/vungle/ads/internal/downloader/a$b$b$a;->PAUSED:I

    return-void
.end method

.method public final setSTARTED(I)V
    .locals 0

    sput p1, Lcom/vungle/ads/internal/downloader/a$b$b$a;->STARTED:I

    return-void
.end method

.method public final setSTATE_CHANGED(I)V
    .locals 0

    sput p1, Lcom/vungle/ads/internal/downloader/a$b$b$a;->STATE_CHANGED:I

    return-void
.end method

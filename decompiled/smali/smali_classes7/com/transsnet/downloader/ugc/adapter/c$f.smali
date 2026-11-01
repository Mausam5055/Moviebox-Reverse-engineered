.class public final Lcom/transsnet/downloader/ugc/adapter/c$f;
.super Lcom/transsnet/downloader/ugc/adapter/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/ugc/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final a:Lcom/transsnet/downloader/ugc/adapter/c$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsnet/downloader/ugc/adapter/c$f;

    invoke-direct {v0}, Lcom/transsnet/downloader/ugc/adapter/c$f;-><init>()V

    sput-object v0, Lcom/transsnet/downloader/ugc/adapter/c$f;->a:Lcom/transsnet/downloader/ugc/adapter/c$f;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsnet/downloader/ugc/adapter/c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

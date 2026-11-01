.class final Lcom/avery/subtitle/DefaultSubtitleEngine$subtitleCacheManager$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avery/subtitle/DefaultSubtitleEngine;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ll5/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Ll5/a;",
        "invoke",
        "()Ll5/a;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/avery/subtitle/DefaultSubtitleEngine$subtitleCacheManager$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/avery/subtitle/DefaultSubtitleEngine$subtitleCacheManager$2;

    invoke-direct {v0}, Lcom/avery/subtitle/DefaultSubtitleEngine$subtitleCacheManager$2;-><init>()V

    sput-object v0, Lcom/avery/subtitle/DefaultSubtitleEngine$subtitleCacheManager$2;->INSTANCE:Lcom/avery/subtitle/DefaultSubtitleEngine$subtitleCacheManager$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine$subtitleCacheManager$2;->invoke()Ll5/a;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ll5/a;
    .locals 1

    new-instance v0, Ll5/a;

    invoke-direct {v0}, Ll5/a;-><init>()V

    return-object v0
.end method

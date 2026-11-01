.class public final Lcom/transsion/audio/player/AudioPlayer$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/player/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/player/AudioPlayer$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/audio/player/AudioPlayer;
    .locals 1

    invoke-static {}, Lcom/transsion/audio/player/AudioPlayer;->c()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/player/AudioPlayer;

    return-object v0
.end method

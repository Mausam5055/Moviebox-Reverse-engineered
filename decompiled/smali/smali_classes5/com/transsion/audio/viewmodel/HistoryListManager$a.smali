.class public final Lcom/transsion/audio/viewmodel/HistoryListManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/viewmodel/HistoryListManager;
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

    invoke-direct {p0}, Lcom/transsion/audio/viewmodel/HistoryListManager$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    invoke-static {}, Lcom/transsion/audio/viewmodel/HistoryListManager;->g()Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/transsion/audio/viewmodel/HistoryListManager;
    .locals 1

    invoke-static {}, Lcom/transsion/audio/viewmodel/HistoryListManager;->h()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/viewmodel/HistoryListManager;

    return-object v0
.end method

.method public final c(Z)V
    .locals 0

    invoke-static {p1}, Lcom/transsion/audio/viewmodel/HistoryListManager;->j(Z)V

    return-void
.end method

.class public abstract Lcom/amazonaws/internal/ReturningRunnable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/internal/ReturningRunnable;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/internal/ReturningRunnable;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amazonaws/internal/ReturningRunnable;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public abstract b()Ljava/lang/Object;
.end method

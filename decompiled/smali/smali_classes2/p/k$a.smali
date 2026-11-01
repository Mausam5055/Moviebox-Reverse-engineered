.class public final Lp/k$a;
.super Ljava/lang/Object;

# interfaces
.implements Lp/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lp/k$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lp/k$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/k$a;->a:Lp/k$b;

    return-void
.end method


# virtual methods
.method public final a()Lp/k$b;
    .locals 1

    iget-object v0, p0, Lp/k$a;->a:Lp/k$b;

    return-object v0
.end method

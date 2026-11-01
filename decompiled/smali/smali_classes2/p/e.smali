.class public final Lp/e;
.super Ljava/lang/Object;

# interfaces
.implements Lp/f;


# instance fields
.field private final a:Lp/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lp/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/e;->a:Lp/d;

    return-void
.end method


# virtual methods
.method public final a()Lp/d;
    .locals 1

    iget-object v0, p0, Lp/e;->a:Lp/d;

    return-object v0
.end method

.class public final Lp/c;
.super Ljava/lang/Object;

# interfaces
.implements Lp/f;


# instance fields
.field private final a:Lp/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lp/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/c;->a:Lp/b;

    return-void
.end method


# virtual methods
.method public final a()Lp/b;
    .locals 1

    iget-object v0, p0, Lp/c;->a:Lp/b;

    return-object v0
.end method

.class public abstract Lbd/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Set;)Lbd/e;
    .locals 1

    new-instance v0, Lbd/c;

    invoke-direct {v0, p0}, Lbd/c;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/util/Set;
.end method

.class public abstract Lp1/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp1/a$a;,
        Lp1/a$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lp1/a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract a(Lp1/a$b;)Ljava/lang/Object;
.end method

.method public final b()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lp1/a;->a:Ljava/util/Map;

    return-object v0
.end method

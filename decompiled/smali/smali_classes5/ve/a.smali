.class public abstract Lve/a;
.super Lve/b;


# instance fields
.field protected final c:Ljava/util/HashSet;

.field protected final d:Lorg/json/JSONObject;

.field protected final e:J


# direct methods
.method public constructor <init>(Lve/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .locals 0

    invoke-direct {p0, p1}, Lve/b;-><init>(Lve/b$b;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lve/a;->c:Ljava/util/HashSet;

    iput-object p3, p0, Lve/a;->d:Lorg/json/JSONObject;

    iput-wide p4, p0, Lve/a;->e:J

    return-void
.end method

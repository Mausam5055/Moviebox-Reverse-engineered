.class public Landroidx/datastore/preferences/protobuf/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/o$a;
    }
.end annotation


# static fields
.field private static volatile b:Landroidx/datastore/preferences/protobuf/o;

.field static final c:Landroidx/datastore/preferences/protobuf/o;


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/datastore/preferences/protobuf/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/o;-><init>(Z)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/o;->c:Landroidx/datastore/preferences/protobuf/o;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/o;->a:Ljava/util/Map;

    return-void
.end method

.method public static b()Landroidx/datastore/preferences/protobuf/o;
    .locals 2

    sget-boolean v0, Landroidx/datastore/preferences/protobuf/x0;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/datastore/preferences/protobuf/o;->c:Landroidx/datastore/preferences/protobuf/o;

    return-object v0

    :cond_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/o;->b:Landroidx/datastore/preferences/protobuf/o;

    if-nez v0, :cond_2

    const-class v1, Landroidx/datastore/preferences/protobuf/o;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/o;->b:Landroidx/datastore/preferences/protobuf/o;

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/datastore/preferences/protobuf/n;->a()Landroidx/datastore/preferences/protobuf/o;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/o;->b:Landroidx/datastore/preferences/protobuf/o;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public a(Landroidx/datastore/preferences/protobuf/n0;I)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$d;
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/o;->a:Ljava/util/Map;

    new-instance v1, Landroidx/datastore/preferences/protobuf/o$a;

    invoke-direct {v1, p1, p2}, Landroidx/datastore/preferences/protobuf/o$a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

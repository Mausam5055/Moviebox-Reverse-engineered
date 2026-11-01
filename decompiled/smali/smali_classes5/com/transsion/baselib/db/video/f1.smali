.class public final Lcom/transsion/baselib/db/video/f1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/baselib/db/video/e1;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/f1;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lcom/transsion/baselib/db/video/f1$a;

    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/f1$a;-><init>(Lcom/transsion/baselib/db/video/f1;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/f1;->b:Landroidx/room/g;

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

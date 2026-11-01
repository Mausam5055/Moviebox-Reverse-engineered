.class public final Landroidx/room/support/AutoClosingRoomOpenHelper;
.super Ljava/lang/Object;

# interfaces
.implements La4/e;
.implements Landroidx/room/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;,
        Landroidx/room/support/AutoClosingRoomOpenHelper$a;,
        Landroidx/room/support/AutoClosingRoomOpenHelper$b;
    }
.end annotation


# instance fields
.field private final a:La4/e;

.field private final b:Landroidx/room/support/AutoCloser;

.field private final c:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;


# direct methods
.method public constructor <init>(La4/e;Landroidx/room/support/AutoCloser;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoCloser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->a:La4/e;

    iput-object p2, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->b:Landroidx/room/support/AutoCloser;

    new-instance p1, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    invoke-direct {p1, p2}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;-><init>(Landroidx/room/support/AutoCloser;)V

    iput-object p1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->c:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    invoke-virtual {p0}, Landroidx/room/support/AutoClosingRoomOpenHelper;->getDelegate()La4/e;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/room/support/AutoCloser;->l(La4/e;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->c:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    invoke-virtual {v0}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->close()V

    return-void
.end method

.method public final d()Landroidx/room/support/AutoCloser;
    .locals 1

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->b:Landroidx/room/support/AutoCloser;

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->a:La4/e;

    invoke-interface {v0}, La4/e;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()La4/e;
    .locals 1

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->a:La4/e;

    return-object v0
.end method

.method public getReadableDatabase()La4/d;
    .locals 1

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->c:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    invoke-virtual {v0}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->q()V

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->c:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    return-object v0
.end method

.method public getWritableDatabase()La4/d;
    .locals 1

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->c:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    invoke-virtual {v0}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->q()V

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->c:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->a:La4/e;

    invoke-interface {v0, p1}, La4/e;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

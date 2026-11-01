.class public final Lcom/transsion/ad/db/MbAdDatabase$g;
.super Ly3/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/db/MbAdDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Ly3/c;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(La4/d;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE MB_AD_DB_PLANS ADD COLUMN adSource TEXT"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE MB_AD_DB_PLANS ADD COLUMN extAdSlot TEXT"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS ps_link_ad (`id` INTEGER NOT NULL,`nonId` TEXT NOT NULL, `adSource` TEXT NOT NULL, `extAdSlot` TEXT NOT NULL, `rank` INTEGER NOT NULL, `psPlanId` TEXT, `psLinkAdInfoStr` TEXT, `psInfoJson` TEXT, PRIMARY KEY(`id`))"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE MB_AD_DB_PLANS ADD COLUMN extImage TEXT"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    return-void
.end method

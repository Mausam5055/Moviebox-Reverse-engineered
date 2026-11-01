.class public final synthetic Lorg/chromium/net/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/chromium/net/e$a;


# instance fields
.field public final synthetic a:Lorg/chromium/net/ConnectionMigrationOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/ConnectionMigrationOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/c;->a:Lorg/chromium/net/ConnectionMigrationOptions;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/net/c;->a:Lorg/chromium/net/ConnectionMigrationOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/e;->a(Lorg/chromium/net/ConnectionMigrationOptions;Lorg/json/JSONObject;)V

    return-void
.end method

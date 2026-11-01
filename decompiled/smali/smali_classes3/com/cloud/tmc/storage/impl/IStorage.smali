.class public interface abstract Lcom/cloud/tmc/storage/impl/IStorage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/storage/impl/IStorage$Companion;,
        Lcom/cloud/tmc/storage/impl/IStorage$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u000b\u0008f\u0018\u0000 %2\u00020\u0001:\u0001%J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\u000c\u0012\u0004\u0012\u00020\u0006\u0012\u0002\u0008\u00030\u0005H\'J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008H&J \u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0001\u0010\t\u001a\u00020\u00062\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000cH\'J\u001c\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u000eH&J\u001c\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0001\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u0010H&J\u0008\u0010\u0011\u001a\u00020\u0012H&J=\u0010\u0013\u001a\u0004\u0018\u0001H\u0014\"\u0008\u0008\u0000\u0010\u0014*\u00020\u00152\u0008\u0008\u0001\u0010\t\u001a\u00020\u00062\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u0002H\u00140\u00172\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u0001H\u0014H\'\u00a2\u0006\u0002\u0010\u0018J \u0010\u0019\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0001\u0010\t\u001a\u00020\u00062\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006H\'J,\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001b2\u0008\u0008\u0001\u0010\t\u001a\u00020\u00062\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001bH\'J\u001a\u0010\u001c\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0008H&J\u001a\u0010\u001e\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u000cH&J\u001a\u0010\u001f\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u000eH&J\u001a\u0010 \u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0010H&J\u001a\u0010!\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0015H&J\u001a\u0010\"\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0006H&J \u0010#\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\u00062\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001bH&J\u0012\u0010$\u001a\u00020\u00032\u0008\u0008\u0001\u0010\t\u001a\u00020\u0006H&\u00a8\u0006&"
    }
    d2 = {
        "Lcom/cloud/tmc/storage/impl/IStorage;",
        "",
        "clearAll",
        "",
        "getAll",
        "",
        "",
        "getBoolean",
        "",
        "key",
        "defaultValue",
        "getByteArray",
        "",
        "getInt",
        "",
        "getLong",
        "",
        "getMMKV",
        "Lcom/tencent/mmkv/MMKV;",
        "getParcelable",
        "T",
        "Landroid/os/Parcelable;",
        "clz",
        "Ljava/lang/Class;",
        "(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Parcelable;)Landroid/os/Parcelable;",
        "getString",
        "getStringSet",
        "",
        "putBoolean",
        "value",
        "putByteArray",
        "putInt",
        "putLong",
        "putParcelable",
        "putString",
        "putStringSet",
        "removeKey",
        "Companion",
        "storage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/storage/impl/IStorage$Companion;

.field public static final GLOBAL_FILE_NAME:Ljava/lang/String; = "global_Z2xvYmFs"

.field public static final GLOBAL_KEY:Ljava/lang/String; = "HYCE81KzixeN"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/cloud/tmc/storage/impl/IStorage$Companion;->$$INSTANCE:Lcom/cloud/tmc/storage/impl/IStorage$Companion;

    sput-object v0, Lcom/cloud/tmc/storage/impl/IStorage;->Companion:Lcom/cloud/tmc/storage/impl/IStorage$Companion;

    return-void
.end method


# virtual methods
.method public abstract clearAll()V
.end method

.method public abstract getAll()Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getByteArray(Ljava/lang/String;[B)[B
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getInt(Ljava/lang/String;I)I
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getLong(Ljava/lang/String;J)J
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getMMKV()Lcom/tencent/mmkv/MMKV;
.end method

.method public abstract getParcelable(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract putBoolean(Ljava/lang/String;Z)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract putByteArray(Ljava/lang/String;[B)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract putInt(Ljava/lang/String;I)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract putLong(Ljava/lang/String;J)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract putStringSet(Ljava/lang/String;Ljava/util/Set;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract removeKey(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

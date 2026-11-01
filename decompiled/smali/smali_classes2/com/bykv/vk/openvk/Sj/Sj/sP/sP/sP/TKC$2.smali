.class Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP/TKC$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Sj:I

.field final synthetic sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;I)V
    .locals 0

    iput p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP/TKC$2;->Sj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP/TKC$2;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;->e(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "video_http_header_t"

    const-string v2, "flag=?"

    iget v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP/TKC$2;->Sj:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

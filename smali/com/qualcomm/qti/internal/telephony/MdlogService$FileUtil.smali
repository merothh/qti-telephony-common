.class Lcom/qualcomm/qti/internal/telephony/MdlogService$FileUtil;
.super Ljava/lang/Object;
.source "MdlogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/MdlogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileUtil"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Ljava/io/File;)Z
    .locals 1
    .param p0, "x0"    # Ljava/io/File;

    .line 180
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/MdlogService$FileUtil;->delDirectory(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static copyDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "sourcePath"    # Ljava/lang/String;
    .param p1, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current folder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->access$000(Ljava/lang/String;)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target  folder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->access$000(Ljava/lang/String;)V

    .line 185
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "tgtFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 190
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v1, "srcFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "srcFileList":[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is empty!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->access$000(Ljava/lang/String;)V

    .line 194
    return-void

    .line 197
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "sourceFileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v5, "sourceFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/qualcomm/qti/internal/telephony/MdlogService$FileUtil;->copyDir(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/qualcomm/qti/internal/telephony/MdlogService$FileUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .end local v4    # "sourceFileName":Ljava/lang/String;
    .end local v5    # "sourceFile":Ljava/io/File;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method private static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "sourceFile"    # Ljava/lang/String;
    .param p1, "targetFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    const/high16 v0, 0xa00000

    .line 211
    .local v0, "buf_size":I
    new-array v1, v0, [B

    .line 214
    .local v1, "buffer":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->access$000(Ljava/lang/String;)V

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target  file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->access$000(Ljava/lang/String;)V

    .line 217
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, "in":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 219
    .local v3, "out":Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "byteRead":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 220
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 223
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 224
    return-void
.end method

.method private static delDirectory(Ljava/io/File;)Z
    .locals 5
    .param p0, "dir"    # Ljava/io/File;

    .line 227
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "children":[Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 230
    return v1

    .line 232
    :cond_0
    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 233
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/MdlogService$FileUtil;->delDirectory(Ljava/io/File;)Z

    move-result v3

    .line 234
    .local v3, "success":Z
    if-nez v3, :cond_1

    .line 235
    return v1

    .line 232
    .end local v3    # "success":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "children":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static fileToZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 23
    .param p0, "sourceDir"    # Ljava/lang/String;
    .param p1, "targetDir"    # Ljava/lang/String;
    .param p2, "zipFileName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 251
    const/4 v3, 0x0

    .line 252
    .local v3, "flag":Z
    const/4 v4, 0x0

    .line 253
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 254
    .local v5, "bis":Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 255
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 256
    .local v7, "bos":Ljava/io/BufferedOutputStream;
    const/4 v8, 0x0

    .line 258
    .local v8, "zos":Ljava/util/zip/ZipOutputStream;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p2

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 259
    .local v10, "zipFileFullName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fileToZip, sourceDir = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", targetDir = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->access$000(Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fileToZip, zipFileFullName = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->access$000(Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 263
    .local v11, "sourceFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v12, 0x0

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "does not exist"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->access$000(Ljava/lang/String;)V

    .line 265
    return v12

    .line 267
    :cond_0
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 268
    .local v13, "sourceFiles":[Ljava/io/File;
    if-eqz v13, :cond_8

    array-length v0, v13

    const/4 v14, 0x1

    if-ge v0, v14, :cond_1

    .line 269
    move/from16 v20, v3

    goto/16 :goto_b

    .line 273
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 274
    .local v14, "tgtDirFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 279
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, "zipFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 281
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v15

    .line 282
    new-instance v15, Ljava/io/BufferedOutputStream;

    invoke-direct {v15, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v7, v15

    .line 283
    new-instance v15, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v15, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v8, v15

    .line 284
    const/16 v15, 0x8

    invoke-virtual {v8, v15}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 285
    const/16 v15, 0x9

    invoke-virtual {v8, v15}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 286
    const/16 v15, 0x2800

    new-array v12, v15, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 287
    .local v12, "bufs":[B
    move-object/from16 v16, v4

    const/4 v4, 0x0

    .local v4, "i":I
    .local v16, "fis":Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    array-length v15, v13

    if-ge v4, v15, :cond_4

    .line 288
    new-instance v15, Ljava/util/zip/ZipEntry;

    move-object/from16 v17, v0

    aget-object v0, v13, v4

    .end local v0    # "zipFile":Ljava/io/File;
    .local v17, "zipFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    move-object v0, v15

    .line 289
    .local v0, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v8, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 290
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v18, v0

    aget-object v0, v13, v4

    .end local v0    # "zipEntry":Ljava/util/zip/ZipEntry;
    .local v18, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 291
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .local v15, "fis":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v2, 0x2800

    invoke-direct {v0, v15, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, v0

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "read":I
    :goto_1
    move/from16 v19, v0

    move/from16 v20, v3

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v5, v12, v0, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    .end local v0    # "read":I
    .end local v3    # "flag":Z
    .local v19, "read":I
    .local v20, "flag":Z
    move/from16 v21, v3

    .end local v19    # "read":I
    .local v21, "read":I
    const/4 v2, -0x1

    if-eq v3, v2, :cond_3

    .line 294
    move/from16 v2, v21

    invoke-virtual {v8, v12, v0, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 292
    .end local v21    # "read":I
    .local v2, "read":I
    move v0, v2

    move/from16 v3, v20

    const/16 v2, 0x2800

    goto :goto_1

    .line 287
    .end local v2    # "read":I
    .end local v18    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v16, v15

    move-object/from16 v0, v17

    move/from16 v3, v20

    move-object/from16 v2, p1

    const/16 v15, 0x2800

    goto :goto_0

    .line 304
    .end local v4    # "i":I
    .end local v12    # "bufs":[B
    .end local v17    # "zipFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    move-object v4, v15

    goto :goto_7

    .line 299
    :catch_0
    move-exception v0

    move-object v4, v15

    goto :goto_6

    .line 304
    .end local v20    # "flag":Z
    .restart local v3    # "flag":Z
    :catchall_1
    move-exception v0

    move/from16 v20, v3

    move-object v4, v15

    goto :goto_5

    .line 299
    :catch_1
    move-exception v0

    move/from16 v20, v3

    move-object v4, v15

    goto :goto_6

    .line 297
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .local v0, "zipFile":Ljava/io/File;
    .restart local v12    # "bufs":[B
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    :cond_4
    move-object/from16 v17, v0

    move/from16 v20, v3

    .end local v0    # "zipFile":Ljava/io/File;
    .end local v3    # "flag":Z
    .restart local v17    # "zipFile":Ljava/io/File;
    .restart local v20    # "flag":Z
    const/4 v2, 0x1

    .line 305
    .end local v12    # "bufs":[B
    .end local v17    # "zipFile":Ljava/io/File;
    .end local v20    # "flag":Z
    .local v2, "flag":Z
    if-eqz v5, :cond_5

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_2

    .line 307
    :catch_2
    move-exception v0

    goto :goto_3

    .line 306
    :cond_5
    :goto_2
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 307
    :goto_3
    nop

    .line 308
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 309
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 310
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    nop

    .line 312
    return v2

    .line 304
    .end local v2    # "flag":Z
    .restart local v3    # "flag":Z
    :catchall_2
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v4, v16

    goto :goto_5

    .line 299
    :catch_3
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v4, v16

    goto :goto_6

    .line 304
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v0

    move/from16 v20, v3

    .end local v3    # "flag":Z
    .restart local v20    # "flag":Z
    :goto_5
    goto :goto_7

    .line 299
    .end local v20    # "flag":Z
    .restart local v3    # "flag":Z
    :catch_4
    move-exception v0

    move/from16 v20, v3

    .line 300
    .end local v3    # "flag":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "flag":Z
    :goto_6
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_4
    move-exception v0

    .line 305
    :goto_7
    if-eqz v5, :cond_6

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_8

    .line 307
    :catch_5
    move-exception v0

    goto :goto_9

    .line 306
    :cond_6
    :goto_8
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_a

    .line 307
    :goto_9
    nop

    .line 308
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 309
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 310
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    :goto_a
    nop

    .line 309
    throw v0

    .line 269
    .end local v14    # "tgtDirFile":Ljava/io/File;
    .end local v20    # "flag":Z
    .restart local v3    # "flag":Z
    :cond_8
    move/from16 v20, v3

    .end local v3    # "flag":Z
    .restart local v20    # "flag":Z
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "is empty"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->access$000(Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x0

    return v0
.end method

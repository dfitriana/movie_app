<?php
function cek_akses($koneksi, $id_modul, $id_role, $action_modul)
{
    $sql = "SELECT * FROM modul_role WHERE id_modul=$id_modul AND id_role=$id_role AND is_$action_modul=1 and deleted_at IS NULL";
    $data_modul_role = mysqli_query($koneksi, $sql);

    if (mysqli_num_rows($data_modul_role) == 0) {
        return false;
    }
    return true;
}

function get_last_id($koneksi){
    $sql = "SELECT last_insert_id() AS last_id";
    $result = mysqli_query($koneksi, $sql);
    $row = mysqli_fetch_assoc($result);

    return $row['last_id'];
}

function save_data($koneksi, $nama_tabel, $data)
{
    $sql = "INSERT INTO " . $nama_tabel . " (";

    $keys = array_keys($data);
    $values = array_values($data);

    $sql .= implode(",", $keys) . ") ";
    $sql .= "VALUES ('" . implode("','", $values) . "')";

    mysqli_query($koneksi, $sql);
}

function update_data($koneksi, $nama_tabel, $data, $id, $primary_key)
{
    // update [nama_tabel] set col1=val1, col2=val2, ... where [primary key] = [id]
    $sql = "UPDATE $nama_tabel SET ";
    $arr_update = [];
    foreach ($data as $k => $v) {
        $arr_update[] = $k . "='" . $v . "'";
    }
    $sql .= implode(",", $arr_update);

    $sql .= " WHERE $primary_key=" . $id;

    mysqli_query($koneksi, $sql);
}

function redirect($page)
{
    echo "<script>
            window.location.replace('$page');
        </script>";
}

function clean_data($data)
{
    $data = addslashes($data);
    $data = htmlspecialchars($data);

    // silahkan tambahkan yang lain untuk security data

    return $data;
}

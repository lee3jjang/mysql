DROP PROCEDURE IF EXISTS `test`;

CREATE PROCEDURE `test` (IN x INT, IN y INT, OUT result INT)
BEGIN
    SELECT inventory_id
    FROM inventory
    WHERE film_id = x
    AND store_id = y
    AND inventory_in_stock(inventory_id);

    SELECT FOUND_ROWS() INTO result;
END;

call film_in_stock(4, 2, @p_film_count);

select @p_film_count;


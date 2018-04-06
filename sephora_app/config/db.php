<?php
class db{
	// Properties
	private $dbhost = 'localhost';
	private $dbuser = 'sephora_test';
	private $dbpass = 'pcXp6&85';
	private $dbname = 'sephora_app';
	
	public function connect() {
		
		try {
			$dbh = new PDO("mysql:host=$this->dbhost;dbname=$this->dbname", $this->dbuser, $this->dbpass);
			$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_SILENT);

		} catch(PDOException $e) {
			die("Database connection failed: " . $e->getMessage());
		}
		
		return $dbh;
	}

}